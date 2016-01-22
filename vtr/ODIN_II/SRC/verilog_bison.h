/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton interface for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     vSYMBOL_ID = 258,
     vNUMBER_ID = 259,
     vDELAY_ID = 260,
     vALWAYS = 261,
     vAND = 262,
     vASSIGN = 263,
     vBEGIN = 264,
     vCASE = 265,
     vDEFAULT = 266,
     vDEFINE = 267,
     vELSE = 268,
     vEND = 269,
     vENDCASE = 270,
     vENDMODULE = 271,
     vIF = 272,
     vINOUT = 273,
     vINPUT = 274,
     vMODULE = 275,
     vNAND = 276,
     vNEGEDGE = 277,
     vNOR = 278,
     vNOT = 279,
     vOR = 280,
     vFOR = 281,
     vOUTPUT = 282,
     vPARAMETER = 283,
     vPOSEDGE = 284,
     vREG = 285,
     vWIRE = 286,
     vXNOR = 287,
     vXOR = 288,
     vDEFPARAM = 289,
     voANDAND = 290,
     voOROR = 291,
     voLTE = 292,
     voGTE = 293,
     voSLEFT = 294,
     voSRIGHT = 295,
     voEQUAL = 296,
     voNOTEQUAL = 297,
     voCASEEQUAL = 298,
     voCASENOTEQUAL = 299,
     voXNOR = 300,
     voNAND = 301,
     voNOR = 302,
     vWHILE = 303,
     vINTEGER = 304,
     vNOT_SUPPORT = 305,
     UOR = 306,
     UAND = 307,
     UNOT = 308,
     UNAND = 309,
     UNOR = 310,
     UXNOR = 311,
     UXOR = 312,
     ULNOT = 313,
     UADD = 314,
     UMINUS = 315,
     LOWER_THAN_ELSE = 316
   };
#endif
/* Tokens.  */
#define vSYMBOL_ID 258
#define vNUMBER_ID 259
#define vDELAY_ID 260
#define vALWAYS 261
#define vAND 262
#define vASSIGN 263
#define vBEGIN 264
#define vCASE 265
#define vDEFAULT 266
#define vDEFINE 267
#define vELSE 268
#define vEND 269
#define vENDCASE 270
#define vENDMODULE 271
#define vIF 272
#define vINOUT 273
#define vINPUT 274
#define vMODULE 275
#define vNAND 276
#define vNEGEDGE 277
#define vNOR 278
#define vNOT 279
#define vOR 280
#define vFOR 281
#define vOUTPUT 282
#define vPARAMETER 283
#define vPOSEDGE 284
#define vREG 285
#define vWIRE 286
#define vXNOR 287
#define vXOR 288
#define vDEFPARAM 289
#define voANDAND 290
#define voOROR 291
#define voLTE 292
#define voGTE 293
#define voSLEFT 294
#define voSRIGHT 295
#define voEQUAL 296
#define voNOTEQUAL 297
#define voCASEEQUAL 298
#define voCASENOTEQUAL 299
#define voXNOR 300
#define voNAND 301
#define voNOR 302
#define vWHILE 303
#define vINTEGER 304
#define vNOT_SUPPORT 305
#define UOR 306
#define UAND 307
#define UNOT 308
#define UNAND 309
#define UNOR 310
#define UXNOR 311
#define UXOR 312
#define ULNOT 313
#define UADD 314
#define UMINUS 315
#define LOWER_THAN_ELSE 316




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
#line 61 "SRC/verilog_bison.y"
{
	char *id_name;
	char *num_value;
	ast_node_t *node;
}
/* Line 1529 of yacc.c.  */
#line 177 "SRC/verilog_bison.h"
	YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;

