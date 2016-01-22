/*
Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.
*/

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "types.h"
#include "node_creation_library.h"
#include "adders.h"
#include "subtractions.h"
#include "netlist_utils.h"
#include "partial_map.h"
#include "util.h"
#include "read_xml_arch_file.h"
#include "globals.h"
#include "errors.h"

struct s_linked_vptr *sub_list = NULL;
struct s_linked_vptr *sub_chain_list = NULL;
int subchaintotal = 0;
int *sub = NULL;

#ifdef VPR6

/*---------------------------------------------------------------------------
 * (function: report_add_distribution)
 *-------------------------------------------------------------------------*/

void report_sub_distribution()
{
	int max = 0;
	int totalsub = 0;
	chain_information_t *sub_chain;

	if(hard_adders == NULL)
		return;

	printf("\nHard MINUS Distribution\n");
	printf("============================\n");
	printf("\n");
	printf("\nTotal # of chains = %d\n", subchaintotal);

	printf("\nHard sub chain Details\n");
	printf("============================\n");

	while(sub_chain_list != NULL)
	{
		sub_chain = (chain_information_t *)sub_chain_list->data_vptr;
		sub_chain_list = delete_in_vptr_list(sub_chain_list);
		totalsub = totalsub + sub_chain->count;
		if(max < sub_chain->count)
			max = sub_chain->count;
	}
	printf("\n");
	printf("\nThe Number of Hard Block subs in the Longest Chain: %d\n", max);

	printf("\n");
	printf("\nThe Total Number of Hard Block subs: %d\n", totalsub);


	return;
}

/*---------------------------------------------------------------------------
 * (function: declare_hard_adder_for_sub)
 *-------------------------------------------------------------------------*/
void declare_hard_adder_for_sub(nnode_t *node)
{
	t_adder *tmp;
	int width_a, width_b, width_sumout;

	/* See if this size instance of adder exists?*/
	if (hard_adders == NULL)
	{
		printf(ERRTAG "Instantiating subtraction where carry chain adders do not exist\n");
	}
	tmp = (t_adder *)hard_adders->instances;
	width_a = node->input_port_sizes[0];
	width_b = node->input_port_sizes[1];
	width_sumout = node->output_port_sizes[1];

	while (tmp != NULL)
	{
		if ((tmp->size_a == width_a) && (tmp->size_b == width_b) && (tmp->size_sumout == width_sumout))
			return;
		else
			tmp = tmp->next;
	}

	/* Does not exist - must create an instance*/
	tmp = (t_adder *)malloc(sizeof(t_adder));
	tmp->next = (t_adder *)hard_adders->instances;
	hard_adders->instances = tmp;
	tmp->size_a = width_a;
	tmp->size_b = width_b;
	tmp->size_cin = 1;
	tmp->size_cout = 1;
	tmp->size_sumout = width_sumout;
	return;
}

/*---------------------------------------------------------------------------
 * (function: instantiate_hard_adder_subtraction )
 *-------------------------------------------------------------------------*/
void instantiate_hard_adder_subtraction(nnode_t *node, short mark, netlist_t *netlist, int type)
{
	char *new_name;
	int len, sanity, i;

	declare_hard_adder_for_sub(node);

	/* Need to give node proper name */
	len = strlen(node->name);
	len = len + 20; /* 20 chars should hold mul specs */
	new_name = (char*)malloc(len);

	/* wide input first :) */
	if (node->input_port_sizes[0] > node->input_port_sizes[1])
		sanity = sprintf(new_name, "%s", node->name);
	else
		sanity = sprintf(new_name, "%s", node->name);

	if (len <= sanity) /* buffer not large enough */
		oassert(FALSE);

	/* Give names to the output pins */
	for (i = 0; i < node->num_output_pins;  i++)
	{
		if (node->output_pins[i]->name ==NULL)
		{
			len = strlen(node->name) + 20; /* 6 chars for pin idx */
			new_name = (char*)malloc(len);
			sprintf(new_name, "%s[%d]", node->name, node->output_pins[i]->pin_node_idx);
			node->output_pins[i]->name = new_name;
		}
	}

	node->traverse_visited = mark;
	return;
}

/*-----------------------------------------------------------------------
 * (function: init_split_adder)
 *	Create a carry chain adder when spliting. Inputs are connected
 *	to original pins, output pins are set to NULL for later connecting
 *---------------------------------------------------------------------*/
void init_split_adder_for_sub(nnode_t *node, nnode_t *ptr, int a, int sizea, int b, int sizeb, int cin, int cout, int index)
{
	int i;
	int flaga = 0;
	int current_sizea, current_sizeb;
	int aa = 0;

	/* Copy properties from original node */
	ptr->type = node->type;
	ptr->related_ast_node = node->related_ast_node;
	ptr->traverse_visited = node->traverse_visited;
	ptr->node_data = NULL;

	/* decide the current size of input a and b */
	current_sizea = (a + 1) - sizea * index;
	current_sizeb = (b + 1) - sizeb * index;
	if(current_sizea >= sizea)
		current_sizea = sizea;
	else if(current_sizea <= 0)
	{
		current_sizea = sizea;
		flaga = 1;
	}
	else
	{
		aa = current_sizea;
		current_sizea = sizea;
		flaga = 2;
	}

	current_sizeb = sizeb;


	/* Set new port sizes and parameters */
	ptr->num_input_port_sizes = 3;
	ptr->input_port_sizes = (int *)malloc(3 * sizeof(int));
	ptr->input_port_sizes[0] = current_sizea;
	ptr->input_port_sizes[1] = current_sizeb;
	ptr->input_port_sizes[2] = cin;
	ptr->num_output_port_sizes = 2;
	ptr->output_port_sizes = (int *)malloc(2 * sizeof(int));
	ptr->output_port_sizes[0] = cout;

	/* The size of output port sumout equals the maxim size of a and b  */
	if(current_sizea > current_sizeb)
		ptr->output_port_sizes[1] = current_sizea;
	else
		ptr->output_port_sizes[1] = current_sizeb;

	/* Set the number of pins and re-locate previous pin entries */
	ptr->num_input_pins = current_sizea + current_sizeb + cin;
	ptr->input_pins = (npin_t**)malloc(sizeof(void *) * (current_sizea + current_sizeb + cin));
	//the normal sub: if flaga or flagb = 1, the input pins should be empty.
	//the unary sub: all input pins for a should be null, input pins for b should be connected to node
	if(node->num_input_port_sizes == 1)
	{
		for (i = 0; i < current_sizea; i++)
			ptr->input_pins[i] = NULL;
	}
	else if((flaga == 1) && (node->num_input_port_sizes == 2))
	{
		for (i = 0; i < current_sizea; i++)
			ptr->input_pins[i] = NULL;
	}
	else if((flaga == 2) && (node->num_input_port_sizes == 2))
	{
		if(index == 0)
		{
			ptr->input_pins[0] = NULL;
			if(sizea > 1)
			{
				for (i = 1; i < aa; i++)
				{
					ptr->input_pins[i] = node->input_pins[i + index * sizea - 1];
					ptr->input_pins[i]->node = ptr;
				}
				for (i = 0; i < (sizea - aa); i++)
					ptr->input_pins[i + aa] = NULL;
			}
		}
		else
		{
			for (i = 0; i < aa; i++)
			{
				ptr->input_pins[i] = node->input_pins[i + index * sizea - 1];
				ptr->input_pins[i]->node = ptr;
			}
			for (i = 0; i < (sizea - aa); i++)
				ptr->input_pins[i + aa] = NULL;
		}
	}
	else
	{
		if(index == 0)
		{
			ptr->input_pins[0] = NULL;
			if(sizea > 1)
			{
				for (i = 1; i < sizea; i++)
				{
					ptr->input_pins[i] = node->input_pins[i + index * sizea - 1];
					ptr->input_pins[i]->node = ptr;
				}
			}
		}
		else
		{
			for (i = 0; i < sizea; i++)
			{
				ptr->input_pins[i] = node->input_pins[i + index * sizea - 1];
				ptr->input_pins[i]->node = ptr;
			}
		}
	}

	for (i = 0; i < current_sizeb; i++)
		ptr->input_pins[i + current_sizeb] = NULL;

	/* Carry_in should be NULL*/
	for (i = 0; i < cin; i++)
	{
		ptr->input_pins[i+current_sizea+current_sizeb] = NULL;
	}

	/* output pins */
	int output;
	if(current_sizea > current_sizeb)
		output = current_sizea + cout;
	else
		output = current_sizeb + cout;

	ptr->num_output_pins = output;
	ptr->output_pins = (npin_t**)malloc(sizeof(void *) * output);
	for (i = 0; i < output; i++)
		ptr->output_pins[i] = NULL;

	return;
}

/*-------------------------------------------------------------------------
 * (function: split_adder)
 *
 * This function works to split a adder into several smaller
 *  adders to better "fit" with the available resources in a
 *  targeted FPGA architecture.
 *
 * This function is at the lowest level since it simply receives
 *  a adder and is told how to split it.
 *
 * Note that for some of the additions we need to perform sign extensions,
 * but this should not be a problem since the sign extension is always
 * extending NOT contracting.
 *-----------------------------------------------------------------------*/

void split_adder_for_sub(nnode_t *nodeo, int a, int b, int sizea, int sizeb, int cin, int cout, int count, netlist_t *netlist)
{
	nnode_t **node;
	nnode_t **not_node;
	int i,j;
	int num;

	/* Check for a legitimate split */
	if(nodeo->num_input_port_sizes == 2)
	{
		oassert(nodeo->input_port_sizes[0] == a);
		oassert(nodeo->input_port_sizes[1] == b);
	}
	else
	{
		oassert(nodeo->input_port_sizes[0] == a);
		oassert(nodeo->input_port_sizes[0] == b);
	}

	chain_information_t *adder_chain = allocate_chain_info();
	adder_chain->count = count;
	adder_chain->name = nodeo->name;
	sub_chain_list = insert_in_vptr_list(sub_chain_list, adder_chain);

	node  = (nnode_t**)malloc(sizeof(nnode_t*)*(count));
	not_node = (nnode_t**)malloc(sizeof(nnode_t*)*(b));

	for(i = 0; i < b; i++)
	{
		not_node[i] = allocate_nnode();
		//not_node[i]->name = NULL;
		if(nodeo->num_input_port_sizes == 2)
			not_node[i] = make_not_gate_with_input(nodeo->input_pins[a + i], not_node[i], -1);
		else
			not_node[i] = make_not_gate_with_input(nodeo->input_pins[i], not_node[i], -1);
	}

	for(i = 0; i < count; i++)
	{
		node[i] = allocate_nnode();
		node[i]->name = (char *)malloc(strlen(nodeo->name) + 20);
		sprintf(node[i]->name, "%s-%d", nodeo->name, i);
		init_split_adder_for_sub(nodeo, node[i], a, sizea, b, sizeb, cin, cout, i);
	}

	if(sizeb > 1)
	{
		if((b + 1) < sizeb)
			num = b;
		else
			num = sizeb - 1;
		for(i = 0; i < num; i++)
			connect_nodes(not_node[i], 0, node[0], (sizea + i + 1));
	}

	for(i = 1; i<count; i++)
	{
		num = (b + 1) - i * sizeb;
		if(num > sizeb)
			num = sizeb;
		else
			num = num;
		for(j = 0; j < num; j++)
			connect_nodes(not_node[(i * sizeb + j - 1)], 0, node[i], (sizea + j));
	}

	//connect the a[0] and b[0] of first adder node to ground
	connect_nodes(netlist->gnd_node, 0, node[0], 0);
	connect_nodes(netlist->vcc_node, 0, node[0], sizea);
	//hang the first sumout
	node[0]->output_pins[1] = allocate_npin();
	node[0]->output_pins[1]->name = append_string("", "%s~dummy_output~%d~%d", node[0]->name, 0, 1);

	//connect the first cin pin to unconn
	connect_nodes(netlist->pad_node, 0, node[0], (sizea + sizeb));

	//for normal subtraction: if any input pins beside intial cin is NULL, it should connect to unconn
	//for unary subtraction: the first number should has the number of a input pins connected to gnd. The others are as same as normal subtraction
	for(i = 0; i < count; i++)
	{
		num = node[i]->num_input_pins;
		for(j = 0; j < num - 1; j++)
		{
			if(node[i]->input_pins[j] == NULL)
			{
				if(nodeo->num_input_port_sizes != 3 && i * sizea + j < a)
					connect_nodes(netlist->gnd_node, 0, node[i], j);
				else
					connect_nodes(netlist->pad_node, 0, node[i], j);
			}
		}
	}

	//connect cout to next node's cin
	for(i = 1; i < count; i++)
		connect_nodes(node[i-1], 0, node[i], (node[i]->num_input_pins - 1));

	//if(count * sizea == a)
	//{
		//remap the output pins of each adder to nodeo
	//	for(i = 0; i < count; i++)
	//	{
	//		for(j = 0; j < node[i]->num_output_pins - 1; j ++)
	//			remap_pin_to_new_node(nodeo->output_pins[i * sizea + j], node[i], j + 1);
	//	}
		// the last node's cout should be remapped to the most significant bits of nodeo
		//remap_pin_to_new_node(nodeo->output_pins[(nodeo->num_output_pins - 1)], node[(count - 1)], 0);
	//	node[count - 1]->output_pins[0] = allocate_npin();
	//	node[count - 1]->output_pins[0]->name = append_string("", "%s~dummy_output~%d~%d", node[(count - 1)]->name, (count - 1), (node[(count - 1)]->num_output_pins - 1));
	//}
	//else
	//{

	for(j = 0; j < node[0]->num_output_pins - 2; j ++)
	{
		if(j < nodeo->num_output_pins)
			remap_pin_to_new_node(nodeo->output_pins[j], node[0], j + 2);
		else
		{
			node[0]->output_pins[j + 2] = allocate_npin();
			// Pad outputs with a unique and descriptive name to avoid collisions.
		   node[0]->output_pins[j + 2]->name = append_string("", "%s~dummy_output~%d~%d", node[0]->name, 0, j + 2);
		}
	}
	if(count > 1)
	{
		//remap the output pins of each adder to nodeo
		for(i = 1; i < count; i++)
		{
			for(j = 0; j < node[i]->num_output_pins - 1; j ++)
			{
				if((i * sizea + j - 1) < nodeo->num_output_pins)
					remap_pin_to_new_node(nodeo->output_pins[i * sizea + j - 1], node[i], j + 1);
				else
				{
					node[i]->output_pins[j + 1] = allocate_npin();
					// Pad outputs with a unique and descriptive name to avoid collisions.
				   node[i]->output_pins[j + 1]->name = append_string("", "%s~dummy_output~%d~%d", node[i]->name, i, j + 2);
				}
			}
		}
	}
		node[count - 1]->output_pins[0] = allocate_npin();
		// Pad outputs with a unique and descriptive name to avoid collisions.
		node[count - 1]->output_pins[0]->name = append_string("", "%s~dummy_output~%d~%d", node[(count - 1)]->name, (count - 1), 0);
		//connect_nodes(node[count - 1], (node[(count - 1)]->num_output_pins - 1), netlist->gnd_node, 0);
	//}


	/* Probably more to do here in freeing the old node! */
	free(nodeo->name);
	free(nodeo->input_port_sizes);
	free(nodeo->output_port_sizes);

	/* Free arrays NOT the pins since relocated! */
	free(nodeo->input_pins);
	free(nodeo->output_pins);
	free(nodeo);
	free(node);
	free(not_node);
	return;
}


/*-------------------------------------------------------------------------
 * (function: pad_adder)
 *
 * Fill out a adder to a fixed size. Size is retrieved from global
 *	hard_adders data.
 * node, a, b, sizea, sizeb, 1, 1, count, netlist
 * NOTE: The inputs are extended based on adder padding setting.
 *-----------------------------------------------------------------------*/
void pad_adder_for_sub(nnode_t *nodeo, int a, int b, int sizea, int sizeb, int cin, int cout, int count, netlist_t *netlist)
{
		nnode_t **node;
		int i,j;
		int num, max, mark;
		nnode_t **new_add_cells;
		nnode_t **new_carry_cells;
		int aleft, bleft;

		/* Check for a legitimate split*/
		oassert(nodeo->input_port_sizes[0] == a);
		oassert(nodeo->input_port_sizes[1] == b);

		mark = 10;
		aleft = a - sizea * count;
		bleft = b - sizea * count;
		if(aleft > bleft)
			max = aleft;
		else
			max = bleft;

		new_add_cells  = (nnode_t**)malloc(sizeof(nnode_t*)*(max + cout));
		new_carry_cells = (nnode_t**)malloc(sizeof(nnode_t*)*(max + cout));
		node  = (nnode_t**)malloc(sizeof(nnode_t*)*(count + 1));

		//connect the first cin pin to ground
		if(count > 0)
		{
			for(i = 0; i < count; i++)
			{
				node[i] = allocate_nnode();
				node[i]->name = (char *)malloc(strlen(nodeo->name) + 4);
				sprintf(node[i]->name, "%s-%d", nodeo->name, i);
				init_split_adder_for_sub(nodeo, node[i], a, sizea, b, sizeb, cin, cout, i);
				sub_list = insert_in_vptr_list(sub_list, node[i]);
			}

			/* create the adder units and the zero unit*/
			for (i = 0; i < max; i++)
			{
				new_add_cells[i] = make_3port_gate(ADDER_FUNC, 1, 1, 1, 1, nodeo, mark);
				new_carry_cells[i] = make_3port_gate(CARRY_FUNC, 1, 1, 1, 1, nodeo, mark);
			}

			connect_nodes(netlist->gnd_node, 0, node[0], (sizea + sizeb));

			//if any input pins beside first cin pins are NULL, connect those pins to ground
			for(i = 0; i < count; i++)
			{
				num = node[i]->num_input_pins;
				for(j = 0; j < num - 1; j++)
				{
					if(node[i]->input_pins[j] == NULL)
						connect_nodes(netlist->gnd_node, 0, node[i], j);
				}
			}

			//connect cout to next node's cin
			if(sizea > sizeb)
			{
				for(i = 1; i < count; i++)
					connect_nodes(node[i-1], sizea, node[i], (node[i]->num_input_pins - 1));
			}
			else
			{
				for(i = 1; i < count; i++)
					connect_nodes(node[i-1], sizeb, node[i], (node[i]->num_input_pins - 1));
			}

			//connect adders cout to add_cells first cin
			add_input_pin_to_node(new_add_cells[0], node[count - 1]->output_pins[(node[(count - 1)]->num_output_pins - 1)], 0);
			//connect adders cout to carry_cells first cin
			add_input_pin_to_node(new_carry_cells[0], node[count - 1]->output_pins[(node[(count - 1)]->num_output_pins - 1)], 0);

			//remap the input pins of add_cells and carry_cells
			for(i = 0; i < max; i++)
			{
				if(i < aleft && aleft > 0)
				{
					remap_pin_to_new_node(nodeo->input_pins[i + sizea * count], new_add_cells[i], 1);
					if (i < max - 1)
						add_input_pin_to_node(new_carry_cells[i], copy_input_npin(new_add_cells[i]->input_pins[1]), 1);
				}
				else
				{
					add_input_pin_to_node(new_add_cells[i], get_zero_pin(netlist), 1);
					if (i < max - 1)
						add_input_pin_to_node(new_carry_cells[i], get_zero_pin(netlist), 1);
				}

				if(i < bleft && bleft > 0)
				{
					remap_pin_to_new_node(nodeo->input_pins[i + a + sizea * count], new_add_cells[i], 2);
					if (i < max - 1)
						add_input_pin_to_node(new_carry_cells[i], copy_input_npin(new_add_cells[i]->input_pins[2]), 2);
				}
				else
				{
					add_input_pin_to_node(new_add_cells[i], get_zero_pin(netlist), 2);
					if (i < max - 1)
						add_input_pin_to_node(new_carry_cells[i], get_zero_pin(netlist), 2);
				}

				/* join that gate to the output*/
				remap_pin_to_new_node(nodeo->output_pins[i + sizea * count], new_add_cells[i], 0);
			}


			//remap the output pins of each adder to nodeo
			for(i = 0; i < count; i++)
			{
				for(j = 0; j < node[i]->num_output_pins - 1; j ++)
					remap_pin_to_new_node(nodeo->output_pins[i * sizea + j], node[i], j);
			}

			/* connect carry outs with carry ins*/
			for(i = 1; i < max; i++)
			{
				connect_nodes(new_carry_cells[i-1], 0, new_add_cells[i], 0);
				if (i < max - 1)
					connect_nodes(new_carry_cells[i-1], 0, new_carry_cells[i], 0);
			}
		}
		else
		{
			/* create the adder units and the zero unit*/
			for (i = 0; i < max; i++)
			{
				//new_add_cells[i] = make_3port_gate(ADDER_FUNC, 1, 1, 1, 1, node, mark);
				// The last carry cell will be connected to an output pin, if one is available
				//new_carry_cells[i] = make_3port_gate(CARRY_FUNC, 1, 1, 1, 1, node, mark);
			}

			/* ground first carry in*/
			add_input_pin_to_node(new_add_cells[0], get_zero_pin(netlist), 0);
			if (i > 1)
			{
				add_input_pin_to_node(new_carry_cells[0], get_zero_pin(netlist), 0);
			}

			/* connect inputs*/
			for(i = 0; i < max; i++)
			{
				if (i < aleft)
				{
					/* join the A port up to adder*/
					remap_pin_to_new_node(nodeo->input_pins[i], new_add_cells[i], 1);
					if (i < max - 1)
						add_input_pin_to_node(new_carry_cells[i], copy_input_npin(new_add_cells[i]->input_pins[1]), 1);
				}
				else
				{
					add_input_pin_to_node(new_add_cells[i], get_zero_pin(netlist), 1);
					if (i < max - 1)
						add_input_pin_to_node(new_carry_cells[i], get_zero_pin(netlist), 1);
				}

				if (i < bleft)
				{
					/* join the B port up to adder*/
					remap_pin_to_new_node(nodeo->input_pins[i+a], new_add_cells[i], 2);
					if (i < max - 1)
						add_input_pin_to_node(new_carry_cells[i], copy_input_npin(new_add_cells[i]->input_pins[2]), 2);
				}
				else
				{
					add_input_pin_to_node(new_add_cells[i], get_zero_pin(netlist), 2);
					if (i < max - 1)
						add_input_pin_to_node(new_carry_cells[i], get_zero_pin(netlist), 2);
				}

				/* join that gate to the output*/
				remap_pin_to_new_node(nodeo->output_pins[i], new_add_cells[i], 0);
			}

			/* connect carry outs with carry ins*/
			for(i = 1; i < max; i++)
			{
				connect_nodes(new_carry_cells[i-1], 0, new_add_cells[i], 0);
				if (i < max - 1)
					connect_nodes(new_carry_cells[i-1], 0, new_carry_cells[i], 0);
			}
		}

		/* Probably more to do here in freeing the old node!*/
		free(nodeo->name);
		free(nodeo->input_port_sizes);
		free(nodeo->output_port_sizes);

		/* Free arrays NOT the pins since relocated!*/
		free(new_add_cells);
		free(new_carry_cells);
		free(nodeo->input_pins);
		free(nodeo->output_pins);
		free(nodeo);
		return;

}


/*-------------------------------------------------------------------------
 * (function: iterate_adders)
 *
 * This function will iterate over all of the add operations that
 *	exist in the netlist and perform a splitting so that they can
 *	fit into a basic hard adder block that exists on the FPGA.
 *	If the proper option is set, then it will be expanded as well
 *	to just use a fixed size hard adder.
 *-----------------------------------------------------------------------*/
void iterate_adders_for_sub(netlist_t *netlist)
{
	int sizea, sizeb, sizecin;//the size of
	int a, b;
	int count,counta,countb;
	nnode_t *node;

	/* Can only perform the optimisation if hard adders exist! */
	if (hard_adders == NULL)
		return;
	else
	{
		//In hard block adder, the summand and addend are same size.
		sizecin = hard_adders->inputs->size;
		sizeb = hard_adders->inputs->next->size;
		sizea = hard_adders->inputs->next->size;

		oassert(sizecin == 1);

		while (sub_list != NULL)
		{
			node = (nnode_t *)sub_list->data_vptr;
			sub_list = delete_in_vptr_list(sub_list);

			oassert(node != NULL);
			oassert(node->type == MINUS);

			subchaintotal++;

			a = node->input_port_sizes[0];
			if(node->num_input_port_sizes == 2)
				b = node->input_port_sizes[1];
			else
				b = node->input_port_sizes[0];

			//fixed_hard_adder = 0 then the use hard block for extra bits
			if(configuration.fixed_hard_adder == 0){
				// how many subtractors base on a can split
				if((a + 1) % sizea == 0)
					counta = (a + 1) / sizea;
				else
					counta = (a + 1) / sizea + 1;
				// how many subtractors base on b can split
				if((b + 1) % sizeb == 0)
					countb = (b + 1) / sizeb;
				else
					countb = (b + 1) / sizeb + 1;
				// how many subtractors need to be split
				if(counta >= countb)
					count = counta;
				else
					count = countb;

				split_adder_for_sub(node, a, b, sizea, sizeb, 1, 1, count, netlist);
			}
			else
			{
				counta = a / sizea;
				countb = b / sizeb;
				if(counta > countb)
					count = countb;
				else
					count = counta;

				//pad_adder_for_sub(node, a, b, sizea, sizeb, 1, 1, count, netlist);
			}
		}
	}

	return;
}

/*-------------------------------------------------------------------------
 * (function: clean_adders)
 *
 * Clean up the memory by deleting the list structure of adders
 *	during optimization
 *-----------------------------------------------------------------------*/
void clean_adders_for_sub()
{
	while (sub_list != NULL)
		sub_list = delete_in_vptr_list(sub_list);
	return;
}

#endif