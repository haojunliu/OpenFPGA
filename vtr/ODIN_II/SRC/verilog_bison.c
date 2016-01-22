/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton implementation for Bison's Yacc-like parsers in C

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

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "2.3"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Using locations.  */
#define YYLSP_NEEDED 0



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




/* Copy the first part of user declarations.  */
#line 1 "SRC/verilog_bison.y"

/*
Copyright (c) 2009 Peter Andrew Jamieson (jamieson.peter@gmail.com)

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
#include "parse_making_ast.h"
 
#define PARSE {printf("here\n");}

#ifndef YYLINENO
int yylineno;
#define YYLINENO yylineno
#else
extern int yylineno;
#endif

void yyerror(const char *str);
int yywrap();
int yyparse();
int yylex(void);

 // RESPONCE in an error
void yyerror(const char *str)
{
	fprintf(stderr,"error in parsing: %s - on line number %d\n",str, yylineno);
	exit(-1);
}
 
// point of continued file reading
int yywrap()
{
	return 1;
}



/* Enabling traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
#endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* Enabling the token table.  */
#ifndef YYTOKEN_TABLE
# define YYTOKEN_TABLE 0
#endif

#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
#line 61 "SRC/verilog_bison.y"
{
	char *id_name;
	char *num_value;
	ast_node_t *node;
}
/* Line 193 of yacc.c.  */
#line 284 "SRC/verilog_bison.c"
	YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif



/* Copy the second part of user declarations.  */


/* Line 216 of yacc.c.  */
#line 297 "SRC/verilog_bison.c"

#ifdef short
# undef short
#endif

#ifdef YYTYPE_UINT8
typedef YYTYPE_UINT8 yytype_uint8;
#else
typedef unsigned char yytype_uint8;
#endif

#ifdef YYTYPE_INT8
typedef YYTYPE_INT8 yytype_int8;
#elif (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
typedef signed char yytype_int8;
#else
typedef short int yytype_int8;
#endif

#ifdef YYTYPE_UINT16
typedef YYTYPE_UINT16 yytype_uint16;
#else
typedef unsigned short int yytype_uint16;
#endif

#ifdef YYTYPE_INT16
typedef YYTYPE_INT16 yytype_int16;
#else
typedef short int yytype_int16;
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif ! defined YYSIZE_T && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned int
# endif
#endif

#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)

#ifndef YY_
# if YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(msgid) dgettext ("bison-runtime", msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(msgid) msgid
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(e) ((void) (e))
#else
# define YYUSE(e) /* empty */
#endif

/* Identity function, used to suppress warnings about constant conditions.  */
#ifndef lint
# define YYID(n) (n)
#else
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static int
YYID (int i)
#else
static int
YYID (i)
    int i;
#endif
{
  return i;
}
#endif

#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#     ifndef _STDLIB_H
#      define _STDLIB_H 1
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's `empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (YYID (0))
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined _STDLIB_H \
       && ! ((defined YYMALLOC || defined malloc) \
	     && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef _STDLIB_H
#    define _STDLIB_H 1
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
	 || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss;
  YYSTYPE yyvs;
  };

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

/* Copy COUNT objects from FROM to TO.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(To, From, Count) \
      __builtin_memcpy (To, From, (Count) * sizeof (*(From)))
#  else
#   define YYCOPY(To, From, Count)		\
      do					\
	{					\
	  YYSIZE_T yyi;				\
	  for (yyi = 0; yyi < (Count); yyi++)	\
	    (To)[yyi] = (From)[yyi];		\
	}					\
      while (YYID (0))
#  endif
# endif

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack)					\
    do									\
      {									\
	YYSIZE_T yynewbytes;						\
	YYCOPY (&yyptr->Stack, Stack, yysize);				\
	Stack = &yyptr->Stack;						\
	yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
	yyptr += yynewbytes / sizeof (*yyptr);				\
      }									\
    while (YYID (0))

#endif

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  9
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   1554

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  88
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  37
/* YYNRULES -- Number of rules.  */
#define YYNRULES  133
/* YYNRULES -- Number of states.  */
#define YYNSTATES  328

/* YYTRANSLATE(YYLEX) -- Bison symbol number corresponding to YYLEX.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   316

#define YYTRANSLATE(YYX)						\
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[YYLEX] -- Bison symbol number corresponding to YYLEX.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,    70,     2,    85,     2,    62,    55,     2,
      63,    64,    60,    58,    83,    59,    86,    61,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,    52,    82,
      56,    84,    57,    51,    87,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,    67,     2,    68,    54,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,    65,    53,    66,    69,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49,    50,    71,    72,    73,    74,
      75,    76,    77,    78,    79,    80,    81
};

#if YYDEBUG
/* YYPRHS[YYN] -- Index of the first RHS symbol of rule number YYN in
   YYRHS.  */
static const yytype_uint16 yyprhs[] =
{
       0,     0,     3,     5,     8,    11,    13,    15,    19,    28,
      38,    46,    49,    51,    53,    55,    57,    59,    61,    63,
      65,    67,    69,    73,    77,    81,    85,    89,    93,    97,
     101,   103,   105,   112,   124,   133,   137,   141,   145,   149,
     153,   157,   161,   165,   169,   178,   186,   193,   199,   202,
     208,   218,   223,   232,   236,   238,   244,   246,   250,   252,
     258,   260,   264,   266,   269,   272,   278,   286,   293,   303,
     309,   311,   315,   320,   324,   329,   332,   334,   338,   342,
     346,   349,   351,   356,   361,   365,   367,   369,   372,   375,
     377,   380,   383,   386,   389,   392,   395,   398,   401,   404,
     407,   411,   415,   419,   423,   427,   431,   435,   439,   443,
     447,   451,   455,   459,   463,   467,   471,   475,   479,   483,
     487,   491,   495,   499,   505,   509,   516,   523,   525,   527,
     532,   539,   543,   547
};

/* YYRHS -- A `-1'-separated list of the rules' RHS.  */
static const yytype_int8 yyrhs[] =
{
      89,     0,    -1,    90,    -1,    90,    92,    -1,    90,    91,
      -1,    92,    -1,    91,    -1,    12,     3,     4,    -1,    20,
       3,    63,   100,    64,    82,    93,    16,    -1,    20,     3,
      63,   100,    83,    64,    82,    93,    16,    -1,    20,     3,
      63,    64,    82,    93,    16,    -1,    93,    94,    -1,    94,
      -1,    95,    -1,    96,    -1,    97,    -1,    98,    -1,    99,
      -1,   102,    -1,   103,    -1,   105,    -1,   111,    -1,    28,
     100,    82,    -1,    19,   100,    82,    -1,    27,   100,    82,
      -1,    18,   100,    82,    -1,    31,   100,    82,    -1,    30,
     100,    82,    -1,    49,   100,    82,    -1,   100,    83,   101,
      -1,   101,    -1,     3,    -1,    67,   122,    52,   122,    68,
       3,    -1,    67,   122,    52,   122,    68,     3,    67,   122,
      52,   122,    68,    -1,    67,   122,    52,   122,    68,     3,
      84,   123,    -1,     3,    84,   123,    -1,     8,   113,    82,
      -1,     7,   104,    82,    -1,    21,   104,    82,    -1,    23,
     104,    82,    -1,    24,   104,    82,    -1,    25,   104,    82,
      -1,    32,   104,    82,    -1,    33,   104,    82,    -1,     3,
      63,   122,    83,   122,    83,   122,    64,    -1,    63,   122,
      83,   122,    83,   122,    64,    -1,     3,    63,   122,    83,
     122,    64,    -1,    63,   122,    83,   122,    64,    -1,     3,
     106,    -1,     3,    63,   107,    64,    82,    -1,    85,    63,
     109,    64,     3,    63,   107,    64,    82,    -1,     3,    63,
      64,    82,    -1,    85,    63,   109,    64,     3,    63,    64,
      82,    -1,   107,    83,   108,    -1,   108,    -1,    86,     3,
      63,   122,    64,    -1,   122,    -1,   109,    83,   110,    -1,
     110,    -1,    86,     3,    63,   122,    64,    -1,   122,    -1,
       6,   119,   112,    -1,   117,    -1,   113,    82,    -1,   114,
      82,    -1,    17,    63,   122,    64,   112,    -1,    17,    63,
     122,    64,   112,    13,   112,    -1,    10,    63,   122,    64,
     115,    15,    -1,    26,    63,   113,    82,   122,    82,   113,
      64,   112,    -1,    48,    63,   122,    64,   112,    -1,    82,
      -1,   123,    84,   122,    -1,   123,    84,     5,   122,    -1,
     123,    37,   122,    -1,   123,    37,     5,   122,    -1,   115,
     116,    -1,   116,    -1,   122,    52,   112,    -1,    11,    52,
     112,    -1,     9,   118,    14,    -1,   118,   112,    -1,   112,
      -1,    87,    63,   120,    64,    -1,    87,    63,    60,    64,
      -1,   120,    25,   121,    -1,   121,    -1,   123,    -1,    29,
       3,    -1,    22,     3,    -1,   123,    -1,    58,   122,    -1,
      59,   122,    -1,    69,   122,    -1,    55,   122,    -1,    53,
     122,    -1,    46,   122,    -1,    47,   122,    -1,    45,   122,
      -1,    70,   122,    -1,    54,   122,    -1,   122,    54,   122,
      -1,   122,    60,   122,    -1,   122,    61,   122,    -1,   122,
      62,   122,    -1,   122,    58,   122,    -1,   122,    59,   122,
      -1,   122,    55,   122,    -1,   122,    53,   122,    -1,   122,
      46,   122,    -1,   122,    47,   122,    -1,   122,    45,   122,
      -1,   122,    56,   122,    -1,   122,    57,   122,    -1,   122,
      40,   122,    -1,   122,    39,   122,    -1,   122,    41,   122,
      -1,   122,    42,   122,    -1,   122,    37,   122,    -1,   122,
      38,   122,    -1,   122,    43,   122,    -1,   122,    44,   122,
      -1,   122,    36,   122,    -1,   122,    35,   122,    -1,   122,
      51,   122,    52,   122,    -1,    63,   122,    64,    -1,    65,
     122,    65,   122,    66,    66,    -1,    65,   122,    65,   124,
      66,    66,    -1,     4,    -1,     3,    -1,     3,    67,   122,
      68,    -1,     3,    67,   122,    52,   122,    68,    -1,    65,
     124,    66,    -1,   124,    83,   122,    -1,   122,    -1
};

/* YYRLINE[YYN] -- source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,   119,   119,   122,   132,   133,   134,   137,   140,   141,
     142,   145,   146,   149,   150,   151,   152,   153,   154,   155,
     156,   157,   161,   164,   167,   170,   173,   174,   175,   178,
     179,   182,   183,   184,   185,   186,   189,   193,   194,   195,
     196,   197,   198,   199,   202,   203,   204,   205,   209,   212,
     213,   214,   215,   218,   219,   222,   223,   226,   227,   230,
     231,   235,   238,   239,   240,   241,   242,   243,   244,   245,
     246,   249,   250,   253,   254,   257,   258,   261,   262,   265,
     268,   269,   272,   273,   277,   278,   281,   282,   283,   286,
     287,   288,   289,   290,   291,   292,   293,   294,   295,   296,
     297,   298,   299,   300,   301,   302,   303,   304,   305,   306,
     307,   308,   309,   310,   311,   312,   313,   314,   315,   316,
     317,   318,   319,   320,   321,   325,   326,   329,   330,   331,
     332,   333,   336,   337
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || YYTOKEN_TABLE
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "vSYMBOL_ID", "vNUMBER_ID", "vDELAY_ID",
  "vALWAYS", "vAND", "vASSIGN", "vBEGIN", "vCASE", "vDEFAULT", "vDEFINE",
  "vELSE", "vEND", "vENDCASE", "vENDMODULE", "vIF", "vINOUT", "vINPUT",
  "vMODULE", "vNAND", "vNEGEDGE", "vNOR", "vNOT", "vOR", "vFOR", "vOUTPUT",
  "vPARAMETER", "vPOSEDGE", "vREG", "vWIRE", "vXNOR", "vXOR", "vDEFPARAM",
  "voANDAND", "voOROR", "voLTE", "voGTE", "voSLEFT", "voSRIGHT", "voEQUAL",
  "voNOTEQUAL", "voCASEEQUAL", "voCASENOTEQUAL", "voXNOR", "voNAND",
  "voNOR", "vWHILE", "vINTEGER", "vNOT_SUPPORT", "'?'", "':'", "'|'",
  "'^'", "'&'", "'<'", "'>'", "'+'", "'-'", "'*'", "'/'", "'%'", "'('",
  "')'", "'{'", "'}'", "'['", "']'", "'~'", "'!'", "UOR", "UAND", "UNOT",
  "UNAND", "UNOR", "UXNOR", "UXOR", "ULNOT", "UADD", "UMINUS",
  "LOWER_THAN_ELSE", "';'", "','", "'='", "'#'", "'.'", "'@'", "$accept",
  "source_text", "items", "define", "module", "list_of_module_items",
  "module_item", "parameter_declaration", "input_declaration",
  "output_declaration", "inout_declaration", "net_declaration",
  "variable_list", "variable", "continuous_assign", "gate_declaration",
  "gate_instance", "module_instantiation", "module_instance",
  "list_of_module_connections", "module_connection",
  "list_of_module_parameters", "module_parameter", "always", "statement",
  "blocking_assignment", "non_blocking_assignment", "case_item_list",
  "case_items", "seq_block", "stmt_list", "delay_control",
  "event_expression_list", "event_expression", "expression", "primary",
  "expression_list", 0
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[YYLEX-NUM] -- Internal token number corresponding to
   token YYLEX-NUM.  */
static const yytype_uint16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292,   293,   294,
     295,   296,   297,   298,   299,   300,   301,   302,   303,   304,
     305,    63,    58,   124,    94,    38,    60,    62,    43,    45,
      42,    47,    37,    40,    41,   123,   125,    91,    93,   126,
      33,   306,   307,   308,   309,   310,   311,   312,   313,   314,
     315,   316,    59,    44,    61,    35,    46,    64
};
# endif

/* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint8 yyr1[] =
{
       0,    88,    89,    90,    90,    90,    90,    91,    92,    92,
      92,    93,    93,    94,    94,    94,    94,    94,    94,    94,
      94,    94,    95,    96,    97,    98,    99,    99,    99,   100,
     100,   101,   101,   101,   101,   101,   102,   103,   103,   103,
     103,   103,   103,   103,   104,   104,   104,   104,   105,   106,
     106,   106,   106,   107,   107,   108,   108,   109,   109,   110,
     110,   111,   112,   112,   112,   112,   112,   112,   112,   112,
     112,   113,   113,   114,   114,   115,   115,   116,   116,   117,
     118,   118,   119,   119,   120,   120,   121,   121,   121,   122,
     122,   122,   122,   122,   122,   122,   122,   122,   122,   122,
     122,   122,   122,   122,   122,   122,   122,   122,   122,   122,
     122,   122,   122,   122,   122,   122,   122,   122,   122,   122,
     122,   122,   122,   122,   122,   122,   122,   123,   123,   123,
     123,   123,   124,   124
};

/* YYR2[YYN] -- Number of symbols composing right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     1,     2,     2,     1,     1,     3,     8,     9,
       7,     2,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     3,     3,     3,     3,     3,     3,     3,     3,
       1,     1,     6,    11,     8,     3,     3,     3,     3,     3,
       3,     3,     3,     3,     8,     7,     6,     5,     2,     5,
       9,     4,     8,     3,     1,     5,     1,     3,     1,     5,
       1,     3,     1,     2,     2,     5,     7,     6,     9,     5,
       1,     3,     4,     3,     4,     2,     1,     3,     3,     3,
       2,     1,     4,     4,     3,     1,     1,     2,     2,     1,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       3,     3,     3,     3,     3,     3,     3,     3,     3,     3,
       3,     3,     3,     3,     3,     3,     3,     3,     3,     3,
       3,     3,     3,     5,     3,     6,     6,     1,     1,     4,
       6,     3,     3,     1
};

/* YYDEFACT[STATE-NAME] -- Default rule to reduce with in state
   STATE-NUM when YYTABLE doesn't specify something else to do.  Zero
   means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       0,     0,     0,     0,     2,     6,     5,     0,     0,     1,
       4,     3,     7,     0,    31,     0,     0,     0,    30,     0,
       0,   128,   127,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    89,     0,     0,     0,
      35,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    12,
      13,    14,    15,    16,    17,    18,    19,    20,    21,     0,
      97,    95,    96,    94,    99,    93,    90,    91,     0,   133,
       0,    92,    98,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      29,   133,     0,     0,    48,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    10,    11,     0,   124,     0,
     131,     0,   122,   121,   117,   118,   114,   113,   115,   116,
     119,   120,   110,   108,   109,     0,     0,   107,   100,   106,
     111,   112,   104,   105,   101,   102,   103,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    70,    61,     0,
       0,    62,     0,     0,     0,    37,    36,     0,    25,     0,
      23,    38,    39,    40,    41,    24,    22,    27,    26,    42,
      43,    28,     0,   129,   133,     0,   132,     0,     0,     8,
       0,     0,     0,     0,    54,    56,     0,     0,    58,    60,
       0,     0,     0,     0,    85,    86,    81,     0,     0,     0,
       0,     0,    63,    64,     0,     0,     0,     0,    71,     0,
       0,     0,   123,    32,     9,    51,     0,     0,     0,     0,
       0,     0,    88,    87,    83,     0,    82,    79,    80,     0,
       0,     0,     0,     0,    73,     0,     0,    72,   130,   125,
     126,     0,     0,     0,    49,    53,     0,     0,    57,    84,
       0,     0,     0,     0,    74,     0,    47,     0,     0,    34,
       0,     0,     0,     0,     0,    76,     0,    65,     0,    69,
      46,     0,     0,     0,    55,    59,     0,     0,     0,    67,
      75,     0,     0,     0,     0,    45,     0,    52,     0,    78,
      77,    66,     0,    44,    33,    50,     0,    68
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,     3,     4,     5,     6,    58,    59,    60,    61,    62,
      63,    64,    17,    18,    65,    66,   119,    67,   114,   213,
     214,   217,   218,    68,   178,   179,   180,   294,   295,   181,
     227,   116,   223,   224,   215,    36,    80
};

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
#define YYPACT_NINF -171
static const yytype_int16 yypact[] =
{
      39,    28,    33,    41,    39,  -171,  -171,    45,   -18,  -171,
    -171,  -171,  -171,     2,   -24,    30,   454,   -41,  -171,    34,
     800,    -3,  -171,   454,   454,   454,   454,   454,   454,   454,
     454,   454,   454,   454,   454,  1238,  -171,    32,    31,   454,
    -171,    19,    23,     4,    34,    29,    29,     4,     4,     4,
       4,    29,    29,    29,    29,     4,     4,    29,   704,  -171,
    -171,  -171,  -171,  -171,  -171,  -171,  -171,  -171,  -171,   454,
    -171,  -171,  -171,  -171,  -171,  -171,  -171,  -171,   998,   967,
     -33,  -171,  -171,   454,   454,   454,   454,   454,   454,   454,
     454,   454,   454,   454,   454,   454,   454,   454,   454,   454,
     454,   454,   454,   454,   454,   454,   454,   454,   800,    40,
    -171,  1350,    64,    80,  -171,    81,    99,    82,   454,    66,
      67,    62,   -53,   -28,    68,    69,    72,    83,   -20,    24,
      51,    54,    84,    89,    57,  -171,  -171,   799,  -171,   454,
    -171,   454,  1404,  1378,   173,   173,   181,   181,  1492,  1492,
    1492,  1492,  1456,  1466,  1456,  1266,   833,  1430,  1456,  1466,
     173,   173,    59,    59,  -171,  -171,  -171,   736,   800,   114,
     280,   507,    99,   100,   112,   113,   117,  -171,  -171,   103,
     104,  -171,    16,   454,   582,  -171,  -171,   380,  -171,    29,
    -171,  -171,  -171,  -171,  -171,  -171,  -171,  -171,  -171,  -171,
    -171,  -171,   454,  -171,   935,   -31,  1350,   454,   159,  -171,
     768,   106,   179,   -40,  -171,  1350,   192,   -37,  -171,  1350,
     193,   194,   137,   -16,  -171,  -171,  -171,   200,   454,   454,
      34,   454,  -171,  -171,   401,   613,   454,   454,  1350,   867,
     136,   139,  1350,   -23,  -171,  -171,   144,   124,   309,   156,
     217,   280,  -171,  -171,  -171,    36,  -171,  -171,  -171,  1028,
    1058,   140,  1088,   454,  1350,   454,   502,  1350,  -171,  -171,
    -171,   454,    34,   454,  -171,  -171,   454,   162,  -171,  -171,
     433,    99,   454,    99,  1350,   551,  -171,   454,  1294,  -171,
    1118,  1148,   251,   175,   354,  -171,  1322,   215,   644,  -171,
    -171,   454,  1178,   454,  -171,  -171,   147,   -36,    99,  -171,
    -171,    99,    99,    34,  1208,  -171,   901,  -171,   148,  -171,
    -171,  -171,   180,  -171,  -171,  -171,    99,  -171
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -171,  -171,  -171,   233,   241,  -100,   -52,  -171,  -171,  -171,
    -171,  -171,    78,   -34,  -171,  -171,   143,  -171,  -171,   -46,
      -1,  -171,    -2,  -171,  -170,   -43,  -171,  -171,   -38,  -171,
    -171,  -171,  -171,    -4,   -13,   -19,   118
};

/* YYTABLE[YYPACT[STATE-NUM]].  What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule which
   number is the opposite.  If zero, do what YYDEFACT says.
   If YYTABLE_NINF, syntax error.  */
#define YYTABLE_NINF -1
static const yytype_uint16 yytable[] =
{
      40,   120,   226,    35,   110,    14,   136,   117,   167,   255,
      70,    71,    72,    73,    74,    75,    76,    77,    78,    79,
      81,    82,   112,    37,   247,   121,   111,   250,   318,   188,
     189,     7,    14,   140,    14,   241,     8,    21,    22,    21,
      22,     9,    38,   248,   271,    13,   251,   248,   256,    12,
     141,     1,   141,   234,   190,   189,   137,   258,   220,     2,
      19,   272,   195,   189,    69,   221,    15,   118,   210,    16,
     142,   143,   144,   145,   146,   147,   148,   149,   150,   151,
     152,   153,   154,   155,   156,   157,   158,   159,   160,   161,
     162,   163,   164,   165,   166,   109,    16,   182,    16,    39,
     187,    39,    21,    22,   113,   184,   196,   189,   172,   173,
     115,   297,    20,   299,   108,   136,   174,    21,    22,   105,
     106,   107,   168,   122,   123,   175,   204,   169,   206,   128,
     129,   130,   131,   197,   189,   134,   198,   189,   319,   201,
     189,   320,   321,   170,   171,   183,   187,   176,   185,   186,
     191,   192,   225,   182,   193,   110,   327,   219,   136,    23,
      24,    25,   243,   228,    39,   194,   199,    26,    27,    28,
     235,   200,    29,    30,   238,   229,   230,    31,   211,    32,
     231,   177,   246,    33,    34,   232,   233,   261,   245,   239,
     124,   125,   126,   127,   242,   249,   252,   253,   132,   133,
     212,   254,   269,    21,    22,   270,   274,   273,   182,   172,
     173,   121,    87,    88,   257,   259,   260,   174,   262,   276,
     277,   264,   282,   266,   267,   292,   175,   308,   312,   317,
     325,   103,   104,   105,   106,   107,   225,    10,   219,   103,
     104,   105,   106,   107,   326,    11,   307,   275,   176,   278,
     284,   279,   285,   289,    21,    22,   310,   205,   288,     0,
     290,     0,   182,   291,   182,    39,     0,   296,     0,   298,
     322,     0,     0,     0,   302,     0,     0,     0,     0,     0,
       0,   296,   177,    21,    22,     0,     0,     0,   314,   182,
     316,     0,   182,   182,   121,     0,    23,    24,    25,     0,
       0,     0,     0,     0,    26,    27,    28,   182,     0,    29,
      30,     0,    21,    22,    31,   306,    32,     0,     0,     0,
      33,    34,     0,     0,     0,    23,    24,    25,     0,     0,
       0,     0,     0,    26,    27,    28,     0,   212,    29,    30,
       0,     0,     0,    31,     0,    32,     0,     0,     0,    33,
      34,     0,     0,     0,    23,    24,    25,    21,    22,     0,
       0,     0,    26,    27,    28,   293,   216,    29,    30,   309,
       0,     0,    31,     0,    32,     0,     0,     0,    33,    34,
       0,     0,     0,    21,    22,   237,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   212,     0,     0,     0,    23,
      24,    25,     0,     0,    21,    22,   263,    26,    27,    28,
       0,     0,    29,    30,     0,     0,     0,    31,     0,    32,
       0,     0,     0,    33,    34,    23,    24,    25,     0,     0,
       0,     0,     0,    26,    27,    28,    21,    22,    29,    30,
       0,     0,     0,    31,   293,    32,    23,    24,    25,    33,
      34,     0,     0,     0,    26,    27,    28,    21,    22,    29,
      30,     0,     0,     0,    31,     0,    32,     0,     0,     0,
      33,    34,     0,     0,     0,     0,     0,     0,    23,    24,
      25,     0,     0,     0,     0,     0,    26,    27,    28,     0,
       0,    29,    30,     0,     0,     0,    31,     0,    32,    23,
      24,    25,    33,    34,     0,     0,     0,    26,    27,    28,
      21,    22,    29,    30,     0,     0,     0,    31,     0,    32,
       0,     0,     0,    33,    34,     0,     0,     0,     0,   220,
       0,     0,     0,     0,     0,     0,   221,    83,    84,    85,
      86,    87,    88,    89,    90,    91,    92,    93,    94,    95,
       0,     0,     0,    96,     0,    98,    99,   100,   101,   102,
     103,   104,   105,   106,   107,     0,   286,   222,     0,     0,
       0,     0,    39,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   287,    83,    84,    85,    86,
      87,    88,    89,    90,    91,    92,    93,    94,    95,     0,
       0,     0,    96,     0,    98,    99,   100,   101,   102,   103,
     104,   105,   106,   107,     0,   300,     0,    83,    84,    85,
      86,    87,    88,    89,    90,    91,    92,    93,    94,    95,
       0,     0,     0,    96,   301,    98,    99,   100,   101,   102,
     103,   104,   105,   106,   107,     0,     0,     0,    83,    84,
      85,    86,    87,    88,    89,    90,    91,    92,    93,    94,
      95,     0,     0,     0,    96,   236,    98,    99,   100,   101,
     102,   103,   104,   105,   106,   107,     0,     0,     0,    83,
      84,    85,    86,    87,    88,    89,    90,    91,    92,    93,
      94,    95,     0,     0,     0,    96,   265,    98,    99,   100,
     101,   102,   103,   104,   105,   106,   107,    41,     0,     0,
      42,    43,    44,     0,     0,     0,     0,     0,     0,     0,
     135,     0,    45,    46,     0,    47,   313,    48,    49,    50,
       0,    51,    52,     0,    53,    54,    55,    56,     0,    41,
       0,     0,    42,    43,    44,     0,     0,     0,     0,     0,
       0,     0,   209,    57,    45,    46,     0,    47,     0,    48,
      49,    50,     0,    51,    52,     0,    53,    54,    55,    56,
       0,    41,     0,     0,    42,    43,    44,     0,     0,     0,
       0,     0,     0,     0,   244,    57,    45,    46,     0,    47,
       0,    48,    49,    50,     0,    51,    52,     0,    53,    54,
      55,    56,     0,    41,     0,     0,    42,    43,    44,     0,
       0,     0,     0,     0,     0,     0,     0,    57,    45,    46,
       0,    47,     0,    48,    49,    50,     0,    51,    52,     0,
      53,    54,    55,    56,    83,    84,    85,    86,    87,    88,
      89,    90,    91,    92,    93,    94,    95,     0,     0,    57,
      96,   202,    98,    99,   100,   101,   102,   103,   104,   105,
     106,   107,     0,     0,     0,     0,     0,   203,    83,    84,
      85,    86,    87,    88,    89,    90,    91,    92,    93,    94,
      95,     0,     0,     0,    96,     0,    98,    99,   100,   101,
     102,   103,   104,   105,   106,   107,     0,     0,     0,     0,
       0,   208,    83,    84,    85,    86,    87,    88,    89,    90,
      91,    92,    93,    94,    95,     0,     0,     0,    96,     0,
      98,    99,   100,   101,   102,   103,   104,   105,   106,   107,
       0,     0,     0,     0,     0,   268,    83,    84,    85,    86,
      87,    88,    89,    90,    91,    92,    93,    94,    95,     0,
       0,     0,    96,     0,    98,    99,   100,   101,   102,   103,
     104,   105,   106,   107,     0,     0,     0,     0,     0,   324,
      83,    84,    85,    86,    87,    88,    89,    90,    91,    92,
      93,    94,    95,     0,     0,     0,    96,     0,    98,    99,
     100,   101,   102,   103,   104,   105,   106,   107,     0,     0,
       0,   240,    83,    84,    85,    86,    87,    88,    89,    90,
      91,    92,    93,    94,    95,     0,     0,     0,    96,     0,
      98,    99,   100,   101,   102,   103,   104,   105,   106,   107,
       0,     0,   139,    83,    84,    85,    86,    87,    88,    89,
      90,    91,    92,    93,    94,    95,     0,     0,     0,    96,
       0,    98,    99,   100,   101,   102,   103,   104,   105,   106,
     107,     0,   138,    83,    84,    85,    86,    87,    88,    89,
      90,    91,    92,    93,    94,    95,     0,     0,     0,    96,
       0,    98,    99,   100,   101,   102,   103,   104,   105,   106,
     107,     0,   280,    83,    84,    85,    86,    87,    88,    89,
      90,    91,    92,    93,    94,    95,     0,     0,     0,    96,
       0,    98,    99,   100,   101,   102,   103,   104,   105,   106,
     107,     0,   281,    83,    84,    85,    86,    87,    88,    89,
      90,    91,    92,    93,    94,    95,     0,     0,     0,    96,
       0,    98,    99,   100,   101,   102,   103,   104,   105,   106,
     107,     0,   283,    83,    84,    85,    86,    87,    88,    89,
      90,    91,    92,    93,    94,    95,     0,     0,     0,    96,
       0,    98,    99,   100,   101,   102,   103,   104,   105,   106,
     107,     0,   304,    83,    84,    85,    86,    87,    88,    89,
      90,    91,    92,    93,    94,    95,     0,     0,     0,    96,
       0,    98,    99,   100,   101,   102,   103,   104,   105,   106,
     107,     0,   305,    83,    84,    85,    86,    87,    88,    89,
      90,    91,    92,    93,    94,    95,     0,     0,     0,    96,
       0,    98,    99,   100,   101,   102,   103,   104,   105,   106,
     107,     0,   315,    83,    84,    85,    86,    87,    88,    89,
      90,    91,    92,    93,    94,    95,     0,     0,     0,    96,
       0,    98,    99,   100,   101,   102,   103,   104,   105,   106,
     107,     0,   323,    83,    84,    85,    86,    87,    88,    89,
      90,    91,    92,    93,    94,    95,     0,     0,     0,    96,
      97,    98,    99,   100,   101,   102,   103,   104,   105,   106,
     107,    83,    84,    85,    86,    87,    88,    89,    90,    91,
      92,    93,    94,    95,     0,     0,     0,    96,   207,    98,
      99,   100,   101,   102,   103,   104,   105,   106,   107,    83,
      84,    85,    86,    87,    88,    89,    90,    91,    92,    93,
      94,    95,     0,     0,     0,    96,   303,    98,    99,   100,
     101,   102,   103,   104,   105,   106,   107,    83,    84,    85,
      86,    87,    88,    89,    90,    91,    92,    93,    94,    95,
       0,     0,     0,    96,   311,    98,    99,   100,   101,   102,
     103,   104,   105,   106,   107,    83,    84,    85,    86,    87,
      88,    89,    90,    91,    92,    93,    94,    95,     0,     0,
       0,    96,     0,    98,    99,   100,   101,   102,   103,   104,
     105,   106,   107,    83,     0,    85,    86,    87,    88,    89,
      90,    91,    92,    93,    94,    95,     0,     0,     0,     0,
       0,    98,    99,   100,   101,   102,   103,   104,   105,   106,
     107,    85,    86,    87,    88,    89,    90,    91,    92,    93,
      94,    95,     0,     0,     0,     0,     0,    98,    99,   100,
     101,   102,   103,   104,   105,   106,   107,    85,    86,    87,
      88,    89,    90,    91,    92,    93,    94,    95,     0,     0,
       0,     0,     0,     0,    99,   100,   101,   102,   103,   104,
     105,   106,   107,    85,    86,    87,    88,    89,    90,    91,
      92,     0,    94,    85,    86,    87,    88,    89,    90,    91,
      92,   100,   101,   102,   103,   104,   105,   106,   107,     0,
       0,     0,   101,   102,   103,   104,   105,   106,   107,    85,
      86,    87,    88,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   101,   102,
     103,   104,   105,   106,   107
};

static const yytype_int16 yycheck[] =
{
      19,    44,   172,    16,    38,     3,    58,     3,   108,    25,
      23,    24,    25,    26,    27,    28,    29,    30,    31,    32,
      33,    34,     3,    64,    64,    44,    39,    64,    64,    82,
      83,     3,     3,    66,     3,    66,     3,     3,     4,     3,
       4,     0,    83,    83,    67,    63,    83,    83,    64,     4,
      83,    12,    83,    37,    82,    83,    69,   227,    22,    20,
      84,    84,    82,    83,    67,    29,    64,    63,   168,    67,
      83,    84,    85,    86,    87,    88,    89,    90,    91,    92,
      93,    94,    95,    96,    97,    98,    99,   100,   101,   102,
     103,   104,   105,   106,   107,    64,    67,   116,    67,    65,
      84,    65,     3,     4,    85,   118,    82,    83,     9,    10,
      87,   281,    82,   283,    82,   167,    17,     3,     4,    60,
      61,    62,    82,    45,    46,    26,   139,    63,   141,    51,
      52,    53,    54,    82,    83,    57,    82,    83,   308,    82,
      83,   311,   312,    63,    63,    63,    84,    48,    82,    82,
      82,    82,   171,   172,    82,   189,   326,   170,   210,    45,
      46,    47,     3,    63,    65,    82,    82,    53,    54,    55,
     183,    82,    58,    59,   187,    63,    63,    63,    64,    65,
      63,    82,     3,    69,    70,    82,    82,   230,    82,   202,
      47,    48,    49,    50,   207,     3,     3,     3,    55,    56,
      86,    64,    66,     3,     4,    66,    82,    63,   227,     9,
      10,   230,    39,    40,    14,   228,   229,    17,   231,    63,
       3,   234,    82,   236,   237,    63,    26,    52,    13,    82,
      82,    58,    59,    60,    61,    62,   255,     4,   251,    58,
      59,    60,    61,    62,    64,     4,   292,   248,    48,   251,
     263,   255,   265,   272,     3,     4,   294,   139,   271,    -1,
     273,    -1,   281,   276,   283,    65,    -1,   280,    -1,   282,
     313,    -1,    -1,    -1,   287,    -1,    -1,    -1,    -1,    -1,
      -1,   294,    82,     3,     4,    -1,    -1,    -1,   301,   308,
     303,    -1,   311,   312,   313,    -1,    45,    46,    47,    -1,
      -1,    -1,    -1,    -1,    53,    54,    55,   326,    -1,    58,
      59,    -1,     3,     4,    63,    64,    65,    -1,    -1,    -1,
      69,    70,    -1,    -1,    -1,    45,    46,    47,    -1,    -1,
      -1,    -1,    -1,    53,    54,    55,    -1,    86,    58,    59,
      -1,    -1,    -1,    63,    -1,    65,    -1,    -1,    -1,    69,
      70,    -1,    -1,    -1,    45,    46,    47,     3,     4,    -1,
      -1,    -1,    53,    54,    55,    11,    86,    58,    59,    15,
      -1,    -1,    63,    -1,    65,    -1,    -1,    -1,    69,    70,
      -1,    -1,    -1,     3,     4,     5,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    86,    -1,    -1,    -1,    45,
      46,    47,    -1,    -1,     3,     4,     5,    53,    54,    55,
      -1,    -1,    58,    59,    -1,    -1,    -1,    63,    -1,    65,
      -1,    -1,    -1,    69,    70,    45,    46,    47,    -1,    -1,
      -1,    -1,    -1,    53,    54,    55,     3,     4,    58,    59,
      -1,    -1,    -1,    63,    11,    65,    45,    46,    47,    69,
      70,    -1,    -1,    -1,    53,    54,    55,     3,     4,    58,
      59,    -1,    -1,    -1,    63,    -1,    65,    -1,    -1,    -1,
      69,    70,    -1,    -1,    -1,    -1,    -1,    -1,    45,    46,
      47,    -1,    -1,    -1,    -1,    -1,    53,    54,    55,    -1,
      -1,    58,    59,    -1,    -1,    -1,    63,    -1,    65,    45,
      46,    47,    69,    70,    -1,    -1,    -1,    53,    54,    55,
       3,     4,    58,    59,    -1,    -1,    -1,    63,    -1,    65,
      -1,    -1,    -1,    69,    70,    -1,    -1,    -1,    -1,    22,
      -1,    -1,    -1,    -1,    -1,    -1,    29,    35,    36,    37,
      38,    39,    40,    41,    42,    43,    44,    45,    46,    47,
      -1,    -1,    -1,    51,    -1,    53,    54,    55,    56,    57,
      58,    59,    60,    61,    62,    -1,    64,    60,    -1,    -1,
      -1,    -1,    65,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    83,    35,    36,    37,    38,
      39,    40,    41,    42,    43,    44,    45,    46,    47,    -1,
      -1,    -1,    51,    -1,    53,    54,    55,    56,    57,    58,
      59,    60,    61,    62,    -1,    64,    -1,    35,    36,    37,
      38,    39,    40,    41,    42,    43,    44,    45,    46,    47,
      -1,    -1,    -1,    51,    83,    53,    54,    55,    56,    57,
      58,    59,    60,    61,    62,    -1,    -1,    -1,    35,    36,
      37,    38,    39,    40,    41,    42,    43,    44,    45,    46,
      47,    -1,    -1,    -1,    51,    83,    53,    54,    55,    56,
      57,    58,    59,    60,    61,    62,    -1,    -1,    -1,    35,
      36,    37,    38,    39,    40,    41,    42,    43,    44,    45,
      46,    47,    -1,    -1,    -1,    51,    83,    53,    54,    55,
      56,    57,    58,    59,    60,    61,    62,     3,    -1,    -1,
       6,     7,     8,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      16,    -1,    18,    19,    -1,    21,    82,    23,    24,    25,
      -1,    27,    28,    -1,    30,    31,    32,    33,    -1,     3,
      -1,    -1,     6,     7,     8,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    16,    49,    18,    19,    -1,    21,    -1,    23,
      24,    25,    -1,    27,    28,    -1,    30,    31,    32,    33,
      -1,     3,    -1,    -1,     6,     7,     8,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    16,    49,    18,    19,    -1,    21,
      -1,    23,    24,    25,    -1,    27,    28,    -1,    30,    31,
      32,    33,    -1,     3,    -1,    -1,     6,     7,     8,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    49,    18,    19,
      -1,    21,    -1,    23,    24,    25,    -1,    27,    28,    -1,
      30,    31,    32,    33,    35,    36,    37,    38,    39,    40,
      41,    42,    43,    44,    45,    46,    47,    -1,    -1,    49,
      51,    52,    53,    54,    55,    56,    57,    58,    59,    60,
      61,    62,    -1,    -1,    -1,    -1,    -1,    68,    35,    36,
      37,    38,    39,    40,    41,    42,    43,    44,    45,    46,
      47,    -1,    -1,    -1,    51,    -1,    53,    54,    55,    56,
      57,    58,    59,    60,    61,    62,    -1,    -1,    -1,    -1,
      -1,    68,    35,    36,    37,    38,    39,    40,    41,    42,
      43,    44,    45,    46,    47,    -1,    -1,    -1,    51,    -1,
      53,    54,    55,    56,    57,    58,    59,    60,    61,    62,
      -1,    -1,    -1,    -1,    -1,    68,    35,    36,    37,    38,
      39,    40,    41,    42,    43,    44,    45,    46,    47,    -1,
      -1,    -1,    51,    -1,    53,    54,    55,    56,    57,    58,
      59,    60,    61,    62,    -1,    -1,    -1,    -1,    -1,    68,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    -1,    -1,    -1,    51,    -1,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62,    -1,    -1,
      -1,    66,    35,    36,    37,    38,    39,    40,    41,    42,
      43,    44,    45,    46,    47,    -1,    -1,    -1,    51,    -1,
      53,    54,    55,    56,    57,    58,    59,    60,    61,    62,
      -1,    -1,    65,    35,    36,    37,    38,    39,    40,    41,
      42,    43,    44,    45,    46,    47,    -1,    -1,    -1,    51,
      -1,    53,    54,    55,    56,    57,    58,    59,    60,    61,
      62,    -1,    64,    35,    36,    37,    38,    39,    40,    41,
      42,    43,    44,    45,    46,    47,    -1,    -1,    -1,    51,
      -1,    53,    54,    55,    56,    57,    58,    59,    60,    61,
      62,    -1,    64,    35,    36,    37,    38,    39,    40,    41,
      42,    43,    44,    45,    46,    47,    -1,    -1,    -1,    51,
      -1,    53,    54,    55,    56,    57,    58,    59,    60,    61,
      62,    -1,    64,    35,    36,    37,    38,    39,    40,    41,
      42,    43,    44,    45,    46,    47,    -1,    -1,    -1,    51,
      -1,    53,    54,    55,    56,    57,    58,    59,    60,    61,
      62,    -1,    64,    35,    36,    37,    38,    39,    40,    41,
      42,    43,    44,    45,    46,    47,    -1,    -1,    -1,    51,
      -1,    53,    54,    55,    56,    57,    58,    59,    60,    61,
      62,    -1,    64,    35,    36,    37,    38,    39,    40,    41,
      42,    43,    44,    45,    46,    47,    -1,    -1,    -1,    51,
      -1,    53,    54,    55,    56,    57,    58,    59,    60,    61,
      62,    -1,    64,    35,    36,    37,    38,    39,    40,    41,
      42,    43,    44,    45,    46,    47,    -1,    -1,    -1,    51,
      -1,    53,    54,    55,    56,    57,    58,    59,    60,    61,
      62,    -1,    64,    35,    36,    37,    38,    39,    40,    41,
      42,    43,    44,    45,    46,    47,    -1,    -1,    -1,    51,
      -1,    53,    54,    55,    56,    57,    58,    59,    60,    61,
      62,    -1,    64,    35,    36,    37,    38,    39,    40,    41,
      42,    43,    44,    45,    46,    47,    -1,    -1,    -1,    51,
      52,    53,    54,    55,    56,    57,    58,    59,    60,    61,
      62,    35,    36,    37,    38,    39,    40,    41,    42,    43,
      44,    45,    46,    47,    -1,    -1,    -1,    51,    52,    53,
      54,    55,    56,    57,    58,    59,    60,    61,    62,    35,
      36,    37,    38,    39,    40,    41,    42,    43,    44,    45,
      46,    47,    -1,    -1,    -1,    51,    52,    53,    54,    55,
      56,    57,    58,    59,    60,    61,    62,    35,    36,    37,
      38,    39,    40,    41,    42,    43,    44,    45,    46,    47,
      -1,    -1,    -1,    51,    52,    53,    54,    55,    56,    57,
      58,    59,    60,    61,    62,    35,    36,    37,    38,    39,
      40,    41,    42,    43,    44,    45,    46,    47,    -1,    -1,
      -1,    51,    -1,    53,    54,    55,    56,    57,    58,    59,
      60,    61,    62,    35,    -1,    37,    38,    39,    40,    41,
      42,    43,    44,    45,    46,    47,    -1,    -1,    -1,    -1,
      -1,    53,    54,    55,    56,    57,    58,    59,    60,    61,
      62,    37,    38,    39,    40,    41,    42,    43,    44,    45,
      46,    47,    -1,    -1,    -1,    -1,    -1,    53,    54,    55,
      56,    57,    58,    59,    60,    61,    62,    37,    38,    39,
      40,    41,    42,    43,    44,    45,    46,    47,    -1,    -1,
      -1,    -1,    -1,    -1,    54,    55,    56,    57,    58,    59,
      60,    61,    62,    37,    38,    39,    40,    41,    42,    43,
      44,    -1,    46,    37,    38,    39,    40,    41,    42,    43,
      44,    55,    56,    57,    58,    59,    60,    61,    62,    -1,
      -1,    -1,    56,    57,    58,    59,    60,    61,    62,    37,
      38,    39,    40,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    56,    57,
      58,    59,    60,    61,    62
};

/* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
   symbol of state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,    12,    20,    89,    90,    91,    92,     3,     3,     0,
      91,    92,     4,    63,     3,    64,    67,   100,   101,    84,
      82,     3,     4,    45,    46,    47,    53,    54,    55,    58,
      59,    63,    65,    69,    70,   122,   123,    64,    83,    65,
     123,     3,     6,     7,     8,    18,    19,    21,    23,    24,
      25,    27,    28,    30,    31,    32,    33,    49,    93,    94,
      95,    96,    97,    98,    99,   102,   103,   105,   111,    67,
     122,   122,   122,   122,   122,   122,   122,   122,   122,   122,
     124,   122,   122,    35,    36,    37,    38,    39,    40,    41,
      42,    43,    44,    45,    46,    47,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62,    82,    64,
     101,   122,     3,    85,   106,    87,   119,     3,    63,   104,
     113,   123,   100,   100,   104,   104,   104,   104,   100,   100,
     100,   100,   104,   104,   100,    16,    94,   122,    64,    65,
      66,    83,   122,   122,   122,   122,   122,   122,   122,   122,
     122,   122,   122,   122,   122,   122,   122,   122,   122,   122,
     122,   122,   122,   122,   122,   122,   122,    93,    82,    63,
      63,    63,     9,    10,    17,    26,    48,    82,   112,   113,
     114,   117,   123,    63,   122,    82,    82,    84,    82,    83,
      82,    82,    82,    82,    82,    82,    82,    82,    82,    82,
      82,    82,    52,    68,   122,   124,   122,    52,    68,    16,
      93,    64,    86,   107,   108,   122,    86,   109,   110,   122,
      22,    29,    60,   120,   121,   123,   112,   118,    63,    63,
      63,    63,    82,    82,    37,   122,    83,     5,   122,   122,
      66,    66,   122,     3,    16,    82,     3,    64,    83,     3,
      64,    83,     3,     3,    64,    25,    64,    14,   112,   122,
     122,   113,   122,     5,   122,    83,   122,   122,    68,    66,
      66,    67,    84,    63,    82,   108,    63,     3,   110,   121,
      64,    64,    82,    64,   122,   122,    64,    83,   122,   123,
     122,   122,    63,    11,   115,   116,   122,   112,   122,   112,
      64,    83,   122,    52,    64,    64,    64,   107,    52,    15,
     116,    52,    13,    82,   122,    64,   122,    82,    64,   112,
     112,   112,   113,    64,    68,    82,    64,   112
};

#define yyerrok		(yyerrstatus = 0)
#define yyclearin	(yychar = YYEMPTY)
#define YYEMPTY		(-2)
#define YYEOF		0

#define YYACCEPT	goto yyacceptlab
#define YYABORT		goto yyabortlab
#define YYERROR		goto yyerrorlab


/* Like YYERROR except do call yyerror.  This remains here temporarily
   to ease the transition to the new meaning of YYERROR, for GCC.
   Once GCC version 2 has supplanted version 1, this can go.  */

#define YYFAIL		goto yyerrlab

#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)					\
do								\
  if (yychar == YYEMPTY && yylen == 1)				\
    {								\
      yychar = (Token);						\
      yylval = (Value);						\
      yytoken = YYTRANSLATE (yychar);				\
      YYPOPSTACK (1);						\
      goto yybackup;						\
    }								\
  else								\
    {								\
      yyerror (YY_("syntax error: cannot back up")); \
      YYERROR;							\
    }								\
while (YYID (0))


#define YYTERROR	1
#define YYERRCODE	256


/* YYLLOC_DEFAULT -- Set CURRENT to span from RHS[1] to RHS[N].
   If N is 0, then set CURRENT to the empty location which ends
   the previous symbol: RHS[0] (always defined).  */

#define YYRHSLOC(Rhs, K) ((Rhs)[K])
#ifndef YYLLOC_DEFAULT
# define YYLLOC_DEFAULT(Current, Rhs, N)				\
    do									\
      if (YYID (N))                                                    \
	{								\
	  (Current).first_line   = YYRHSLOC (Rhs, 1).first_line;	\
	  (Current).first_column = YYRHSLOC (Rhs, 1).first_column;	\
	  (Current).last_line    = YYRHSLOC (Rhs, N).last_line;		\
	  (Current).last_column  = YYRHSLOC (Rhs, N).last_column;	\
	}								\
      else								\
	{								\
	  (Current).first_line   = (Current).last_line   =		\
	    YYRHSLOC (Rhs, 0).last_line;				\
	  (Current).first_column = (Current).last_column =		\
	    YYRHSLOC (Rhs, 0).last_column;				\
	}								\
    while (YYID (0))
#endif


/* YY_LOCATION_PRINT -- Print the location on the stream.
   This macro was not mandated originally: define only if we know
   we won't break user code: when these are the locations we know.  */

#ifndef YY_LOCATION_PRINT
# if YYLTYPE_IS_TRIVIAL
#  define YY_LOCATION_PRINT(File, Loc)			\
     fprintf (File, "%d.%d-%d.%d",			\
	      (Loc).first_line, (Loc).first_column,	\
	      (Loc).last_line,  (Loc).last_column)
# else
#  define YY_LOCATION_PRINT(File, Loc) ((void) 0)
# endif
#endif


/* YYLEX -- calling `yylex' with the right arguments.  */

#ifdef YYLEX_PARAM
# define YYLEX yylex (YYLEX_PARAM)
#else
# define YYLEX yylex ()
#endif

/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)			\
do {						\
  if (yydebug)					\
    YYFPRINTF Args;				\
} while (YYID (0))

# define YY_SYMBOL_PRINT(Title, Type, Value, Location)			  \
do {									  \
  if (yydebug)								  \
    {									  \
      YYFPRINTF (stderr, "%s ", Title);					  \
      yy_symbol_print (stderr,						  \
		  Type, Value); \
      YYFPRINTF (stderr, "\n");						  \
    }									  \
} while (YYID (0))


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

/*ARGSUSED*/
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
#else
static void
yy_symbol_value_print (yyoutput, yytype, yyvaluep)
    FILE *yyoutput;
    int yytype;
    YYSTYPE const * const yyvaluep;
#endif
{
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
# else
  YYUSE (yyoutput);
# endif
  switch (yytype)
    {
      default:
	break;
    }
}


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
#else
static void
yy_symbol_print (yyoutput, yytype, yyvaluep)
    FILE *yyoutput;
    int yytype;
    YYSTYPE const * const yyvaluep;
#endif
{
  if (yytype < YYNTOKENS)
    YYFPRINTF (yyoutput, "token %s (", yytname[yytype]);
  else
    YYFPRINTF (yyoutput, "nterm %s (", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
  YYFPRINTF (yyoutput, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_stack_print (yytype_int16 *bottom, yytype_int16 *top)
#else
static void
yy_stack_print (bottom, top)
    yytype_int16 *bottom;
    yytype_int16 *top;
#endif
{
  YYFPRINTF (stderr, "Stack now");
  for (; bottom <= top; ++bottom)
    YYFPRINTF (stderr, " %d", *bottom);
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)				\
do {								\
  if (yydebug)							\
    yy_stack_print ((Bottom), (Top));				\
} while (YYID (0))


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_reduce_print (YYSTYPE *yyvsp, int yyrule)
#else
static void
yy_reduce_print (yyvsp, yyrule)
    YYSTYPE *yyvsp;
    int yyrule;
#endif
{
  int yynrhs = yyr2[yyrule];
  int yyi;
  unsigned long int yylno = yyrline[yyrule];
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
	     yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      fprintf (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr, yyrhs[yyprhs[yyrule] + yyi],
		       &(yyvsp[(yyi + 1) - (yynrhs)])
		       		       );
      fprintf (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)		\
do {					\
  if (yydebug)				\
    yy_reduce_print (yyvsp, Rule); \
} while (YYID (0))

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef	YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif



#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static YYSIZE_T
yystrlen (const char *yystr)
#else
static YYSIZE_T
yystrlen (yystr)
    const char *yystr;
#endif
{
  YYSIZE_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static char *
yystpcpy (char *yydest, const char *yysrc)
#else
static char *
yystpcpy (yydest, yysrc)
    char *yydest;
    const char *yysrc;
#endif
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYSIZE_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYSIZE_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
	switch (*++yyp)
	  {
	  case '\'':
	  case ',':
	    goto do_not_strip_quotes;

	  case '\\':
	    if (*++yyp != '\\')
	      goto do_not_strip_quotes;
	    /* Fall through.  */
	  default:
	    if (yyres)
	      yyres[yyn] = *yyp;
	    yyn++;
	    break;

	  case '"':
	    if (yyres)
	      yyres[yyn] = '\0';
	    return yyn;
	  }
    do_not_strip_quotes: ;
    }

  if (! yyres)
    return yystrlen (yystr);

  return yystpcpy (yyres, yystr) - yyres;
}
# endif

/* Copy into YYRESULT an error message about the unexpected token
   YYCHAR while in state YYSTATE.  Return the number of bytes copied,
   including the terminating null byte.  If YYRESULT is null, do not
   copy anything; just return the number of bytes that would be
   copied.  As a special case, return 0 if an ordinary "syntax error"
   message will do.  Return YYSIZE_MAXIMUM if overflow occurs during
   size calculation.  */
static YYSIZE_T
yysyntax_error (char *yyresult, int yystate, int yychar)
{
  int yyn = yypact[yystate];

  if (! (YYPACT_NINF < yyn && yyn <= YYLAST))
    return 0;
  else
    {
      int yytype = YYTRANSLATE (yychar);
      YYSIZE_T yysize0 = yytnamerr (0, yytname[yytype]);
      YYSIZE_T yysize = yysize0;
      YYSIZE_T yysize1;
      int yysize_overflow = 0;
      enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
      char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
      int yyx;

# if 0
      /* This is so xgettext sees the translatable formats that are
	 constructed on the fly.  */
      YY_("syntax error, unexpected %s");
      YY_("syntax error, unexpected %s, expecting %s");
      YY_("syntax error, unexpected %s, expecting %s or %s");
      YY_("syntax error, unexpected %s, expecting %s or %s or %s");
      YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s");
# endif
      char *yyfmt;
      char const *yyf;
      static char const yyunexpected[] = "syntax error, unexpected %s";
      static char const yyexpecting[] = ", expecting %s";
      static char const yyor[] = " or %s";
      char yyformat[sizeof yyunexpected
		    + sizeof yyexpecting - 1
		    + ((YYERROR_VERBOSE_ARGS_MAXIMUM - 2)
		       * (sizeof yyor - 1))];
      char const *yyprefix = yyexpecting;

      /* Start YYX at -YYN if negative to avoid negative indexes in
	 YYCHECK.  */
      int yyxbegin = yyn < 0 ? -yyn : 0;

      /* Stay within bounds of both yycheck and yytname.  */
      int yychecklim = YYLAST - yyn + 1;
      int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
      int yycount = 1;

      yyarg[0] = yytname[yytype];
      yyfmt = yystpcpy (yyformat, yyunexpected);

      for (yyx = yyxbegin; yyx < yyxend; ++yyx)
	if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR)
	  {
	    if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
	      {
		yycount = 1;
		yysize = yysize0;
		yyformat[sizeof yyunexpected - 1] = '\0';
		break;
	      }
	    yyarg[yycount++] = yytname[yyx];
	    yysize1 = yysize + yytnamerr (0, yytname[yyx]);
	    yysize_overflow |= (yysize1 < yysize);
	    yysize = yysize1;
	    yyfmt = yystpcpy (yyfmt, yyprefix);
	    yyprefix = yyor;
	  }

      yyf = YY_(yyformat);
      yysize1 = yysize + yystrlen (yyf);
      yysize_overflow |= (yysize1 < yysize);
      yysize = yysize1;

      if (yysize_overflow)
	return YYSIZE_MAXIMUM;

      if (yyresult)
	{
	  /* Avoid sprintf, as that infringes on the user's name space.
	     Don't have undefined behavior even if the translation
	     produced a string with the wrong number of "%s"s.  */
	  char *yyp = yyresult;
	  int yyi = 0;
	  while ((*yyp = *yyf) != '\0')
	    {
	      if (*yyp == '%' && yyf[1] == 's' && yyi < yycount)
		{
		  yyp += yytnamerr (yyp, yyarg[yyi++]);
		  yyf += 2;
		}
	      else
		{
		  yyp++;
		  yyf++;
		}
	    }
	}
      return yysize;
    }
}
#endif /* YYERROR_VERBOSE */


/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

/*ARGSUSED*/
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
#else
static void
yydestruct (yymsg, yytype, yyvaluep)
    const char *yymsg;
    int yytype;
    YYSTYPE *yyvaluep;
#endif
{
  YYUSE (yyvaluep);

  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  switch (yytype)
    {

      default:
	break;
    }
}


/* Prevent warnings from -Wmissing-prototypes.  */

#ifdef YYPARSE_PARAM
#if defined __STDC__ || defined __cplusplus
int yyparse (void *YYPARSE_PARAM);
#else
int yyparse ();
#endif
#else /* ! YYPARSE_PARAM */
#if defined __STDC__ || defined __cplusplus
int yyparse (void);
#else
int yyparse ();
#endif
#endif /* ! YYPARSE_PARAM */



/* The look-ahead symbol.  */
int yychar;

/* The semantic value of the look-ahead symbol.  */
YYSTYPE yylval;

/* Number of syntax errors so far.  */
int yynerrs;



/*----------.
| yyparse.  |
`----------*/

#ifdef YYPARSE_PARAM
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
int
yyparse (void *YYPARSE_PARAM)
#else
int
yyparse (YYPARSE_PARAM)
    void *YYPARSE_PARAM;
#endif
#else /* ! YYPARSE_PARAM */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
int
yyparse (void)
#else
int
yyparse ()

#endif
#endif
{
  
  int yystate;
  int yyn;
  int yyresult;
  /* Number of tokens to shift before error messages enabled.  */
  int yyerrstatus;
  /* Look-ahead token as an internal (translated) token number.  */
  int yytoken = 0;
#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

  /* Three stacks and their tools:
     `yyss': related to states,
     `yyvs': related to semantic values,
     `yyls': related to locations.

     Refer to the stacks thru separate pointers, to allow yyoverflow
     to reallocate them elsewhere.  */

  /* The state stack.  */
  yytype_int16 yyssa[YYINITDEPTH];
  yytype_int16 *yyss = yyssa;
  yytype_int16 *yyssp;

  /* The semantic value stack.  */
  YYSTYPE yyvsa[YYINITDEPTH];
  YYSTYPE *yyvs = yyvsa;
  YYSTYPE *yyvsp;



#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  YYSIZE_T yystacksize = YYINITDEPTH;

  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;


  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY;		/* Cause a token to be read.  */

  /* Initialize stack pointers.
     Waste one element of value and location stack
     so that they stay on the same level as the state stack.
     The wasted elements are never initialized.  */

  yyssp = yyss;
  yyvsp = yyvs;

  goto yysetstate;

/*------------------------------------------------------------.
| yynewstate -- Push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
 yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;

 yysetstate:
  *yyssp = yystate;

  if (yyss + yystacksize - 1 <= yyssp)
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = yyssp - yyss + 1;

#ifdef yyoverflow
      {
	/* Give user a chance to reallocate the stack.  Use copies of
	   these so that the &'s don't force the real ones into
	   memory.  */
	YYSTYPE *yyvs1 = yyvs;
	yytype_int16 *yyss1 = yyss;


	/* Each stack pointer address is followed by the size of the
	   data in use in that stack, in bytes.  This used to be a
	   conditional around just the two extra args, but that might
	   be undefined if yyoverflow is a macro.  */
	yyoverflow (YY_("memory exhausted"),
		    &yyss1, yysize * sizeof (*yyssp),
		    &yyvs1, yysize * sizeof (*yyvsp),

		    &yystacksize);

	yyss = yyss1;
	yyvs = yyvs1;
      }
#else /* no yyoverflow */
# ifndef YYSTACK_RELOCATE
      goto yyexhaustedlab;
# else
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
	goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
	yystacksize = YYMAXDEPTH;

      {
	yytype_int16 *yyss1 = yyss;
	union yyalloc *yyptr =
	  (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
	if (! yyptr)
	  goto yyexhaustedlab;
	YYSTACK_RELOCATE (yyss);
	YYSTACK_RELOCATE (yyvs);

#  undef YYSTACK_RELOCATE
	if (yyss1 != yyssa)
	  YYSTACK_FREE (yyss1);
      }
# endif
#endif /* no yyoverflow */

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;


      YYDPRINTF ((stderr, "Stack size increased to %lu\n",
		  (unsigned long int) yystacksize));

      if (yyss + yystacksize - 1 <= yyssp)
	YYABORT;
    }

  YYDPRINTF ((stderr, "Entering state %d\n", yystate));

  goto yybackup;

/*-----------.
| yybackup.  |
`-----------*/
yybackup:

  /* Do appropriate processing given the current state.  Read a
     look-ahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to look-ahead token.  */
  yyn = yypact[yystate];
  if (yyn == YYPACT_NINF)
    goto yydefault;

  /* Not known => get a look-ahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid look-ahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = YYLEX;
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yyn == 0 || yyn == YYTABLE_NINF)
	goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  if (yyn == YYFINAL)
    YYACCEPT;

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the look-ahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);

  /* Discard the shifted token unless it is eof.  */
  if (yychar != YYEOF)
    yychar = YYEMPTY;

  yystate = yyn;
  *++yyvsp = yylval;

  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- Do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     `$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
        case 2:
#line 119 "SRC/verilog_bison.y"
    {next_parsed_verilog_file((yyvsp[(1) - (1)].node));;}
    break;

  case 3:
#line 122 "SRC/verilog_bison.y"
    {
											if ((yyvsp[(1) - (2)].node) != NULL)
											{
												(yyval.node) = newList_entry((yyvsp[(1) - (2)].node), (yyvsp[(2) - (2)].node));
											}
											else
											{
												(yyval.node) = newList(FILE_ITEMS, (yyvsp[(2) - (2)].node));
											}
										;}
    break;

  case 4:
#line 132 "SRC/verilog_bison.y"
    {(yyval.node) = (yyvsp[(1) - (2)].node);;}
    break;

  case 5:
#line 133 "SRC/verilog_bison.y"
    {(yyval.node) = newList(FILE_ITEMS, (yyvsp[(1) - (1)].node));;}
    break;

  case 6:
#line 134 "SRC/verilog_bison.y"
    {(yyval.node) = NULL;;}
    break;

  case 7:
#line 137 "SRC/verilog_bison.y"
    {(yyval.node) = NULL; newConstant((yyvsp[(2) - (3)].id_name), (yyvsp[(3) - (3)].num_value), yylineno);;}
    break;

  case 8:
#line 140 "SRC/verilog_bison.y"
    {(yyval.node) = newModule((yyvsp[(2) - (8)].id_name), (yyvsp[(4) - (8)].node), (yyvsp[(7) - (8)].node), yylineno);;}
    break;

  case 9:
#line 141 "SRC/verilog_bison.y"
    {(yyval.node) = newModule((yyvsp[(2) - (9)].id_name), (yyvsp[(4) - (9)].node), (yyvsp[(8) - (9)].node), yylineno);;}
    break;

  case 10:
#line 142 "SRC/verilog_bison.y"
    {(yyval.node) = newModule((yyvsp[(2) - (7)].id_name), NULL, (yyvsp[(6) - (7)].node), yylineno);;}
    break;

  case 11:
#line 145 "SRC/verilog_bison.y"
    {(yyval.node) = newList_entry((yyvsp[(1) - (2)].node), (yyvsp[(2) - (2)].node));;}
    break;

  case 12:
#line 146 "SRC/verilog_bison.y"
    {(yyval.node) = newList(MODULE_ITEMS, (yyvsp[(1) - (1)].node));;}
    break;

  case 13:
#line 149 "SRC/verilog_bison.y"
    {(yyval.node) = (yyvsp[(1) - (1)].node);;}
    break;

  case 14:
#line 150 "SRC/verilog_bison.y"
    {(yyval.node) = (yyvsp[(1) - (1)].node);;}
    break;

  case 15:
#line 151 "SRC/verilog_bison.y"
    {(yyval.node) = (yyvsp[(1) - (1)].node);;}
    break;

  case 16:
#line 152 "SRC/verilog_bison.y"
    {(yyval.node) = (yyvsp[(1) - (1)].node);;}
    break;

  case 17:
#line 153 "SRC/verilog_bison.y"
    {(yyval.node) = (yyvsp[(1) - (1)].node);;}
    break;

  case 18:
#line 154 "SRC/verilog_bison.y"
    {(yyval.node) = (yyvsp[(1) - (1)].node);;}
    break;

  case 19:
#line 155 "SRC/verilog_bison.y"
    {(yyval.node) = (yyvsp[(1) - (1)].node);;}
    break;

  case 20:
#line 156 "SRC/verilog_bison.y"
    {(yyval.node) = (yyvsp[(1) - (1)].node);;}
    break;

  case 21:
#line 157 "SRC/verilog_bison.y"
    {(yyval.node) = (yyvsp[(1) - (1)].node);;}
    break;

  case 22:
#line 161 "SRC/verilog_bison.y"
    {(yyval.node) = markAndProcessSymbolListWith(PARAMETER, (yyvsp[(2) - (3)].node));;}
    break;

  case 23:
#line 164 "SRC/verilog_bison.y"
    {(yyval.node) = markAndProcessSymbolListWith(INPUT, (yyvsp[(2) - (3)].node));;}
    break;

  case 24:
#line 167 "SRC/verilog_bison.y"
    {(yyval.node) = markAndProcessSymbolListWith(OUTPUT, (yyvsp[(2) - (3)].node));;}
    break;

  case 25:
#line 170 "SRC/verilog_bison.y"
    {(yyval.node) = markAndProcessSymbolListWith(INOUT, (yyvsp[(2) - (3)].node));;}
    break;

  case 26:
#line 173 "SRC/verilog_bison.y"
    {(yyval.node) = markAndProcessSymbolListWith(WIRE, (yyvsp[(2) - (3)].node));;}
    break;

  case 27:
#line 174 "SRC/verilog_bison.y"
    {(yyval.node) = markAndProcessSymbolListWith(REG, (yyvsp[(2) - (3)].node));;}
    break;

  case 28:
#line 175 "SRC/verilog_bison.y"
    {(yyval.node) = markAndProcessSymbolListWith(INTEGER, (yyvsp[(2) - (3)].node));;}
    break;

  case 29:
#line 178 "SRC/verilog_bison.y"
    {(yyval.node) = newList_entry((yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node));;}
    break;

  case 30:
#line 179 "SRC/verilog_bison.y"
    {(yyval.node) = newList(VAR_DECLARE_LIST, (yyvsp[(1) - (1)].node));;}
    break;

  case 31:
#line 182 "SRC/verilog_bison.y"
    {(yyval.node) = newVarDeclare((yyvsp[(1) - (1)].id_name), NULL, NULL, NULL, NULL, NULL, yylineno);;}
    break;

  case 32:
#line 183 "SRC/verilog_bison.y"
    {(yyval.node) = newVarDeclare((yyvsp[(6) - (6)].id_name), (yyvsp[(2) - (6)].node), (yyvsp[(4) - (6)].node), NULL, NULL, NULL, yylineno);;}
    break;

  case 33:
#line 184 "SRC/verilog_bison.y"
    {(yyval.node) = newVarDeclare((yyvsp[(6) - (11)].id_name), (yyvsp[(2) - (11)].node), (yyvsp[(4) - (11)].node), (yyvsp[(8) - (11)].node), (yyvsp[(10) - (11)].node), NULL, yylineno);;}
    break;

  case 34:
#line 185 "SRC/verilog_bison.y"
    {(yyval.node) = newVarDeclare((yyvsp[(6) - (8)].id_name), (yyvsp[(2) - (8)].node), (yyvsp[(4) - (8)].node), NULL, NULL, (yyvsp[(8) - (8)].node), yylineno);;}
    break;

  case 35:
#line 186 "SRC/verilog_bison.y"
    {(yyval.node) = newVarDeclare((yyvsp[(1) - (3)].id_name), NULL, NULL, NULL, NULL, (yyvsp[(3) - (3)].node), yylineno);;}
    break;

  case 36:
#line 189 "SRC/verilog_bison.y"
    {(yyval.node) = newAssign((yyvsp[(2) - (3)].node), yylineno);;}
    break;

  case 37:
#line 193 "SRC/verilog_bison.y"
    {(yyval.node) = newGate(BITWISE_AND, (yyvsp[(2) - (3)].node), yylineno);;}
    break;

  case 38:
#line 194 "SRC/verilog_bison.y"
    {(yyval.node) = newGate(BITWISE_NAND, (yyvsp[(2) - (3)].node), yylineno);;}
    break;

  case 39:
#line 195 "SRC/verilog_bison.y"
    {(yyval.node) = newGate(BITWISE_NOR, (yyvsp[(2) - (3)].node), yylineno);;}
    break;

  case 40:
#line 196 "SRC/verilog_bison.y"
    {(yyval.node) = newGate(BITWISE_NOT, (yyvsp[(2) - (3)].node), yylineno);;}
    break;

  case 41:
#line 197 "SRC/verilog_bison.y"
    {(yyval.node) = newGate(BITWISE_OR, (yyvsp[(2) - (3)].node), yylineno);;}
    break;

  case 42:
#line 198 "SRC/verilog_bison.y"
    {(yyval.node) = newGate(BITWISE_XNOR, (yyvsp[(2) - (3)].node), yylineno);;}
    break;

  case 43:
#line 199 "SRC/verilog_bison.y"
    {(yyval.node) = newGate(BITWISE_XOR, (yyvsp[(2) - (3)].node), yylineno);;}
    break;

  case 44:
#line 202 "SRC/verilog_bison.y"
    {(yyval.node) = newGateInstance((yyvsp[(1) - (8)].id_name), (yyvsp[(3) - (8)].node), (yyvsp[(5) - (8)].node), (yyvsp[(7) - (8)].node), yylineno);;}
    break;

  case 45:
#line 203 "SRC/verilog_bison.y"
    {(yyval.node) = newGateInstance(NULL, (yyvsp[(2) - (7)].node), (yyvsp[(4) - (7)].node), (yyvsp[(6) - (7)].node), yylineno);;}
    break;

  case 46:
#line 204 "SRC/verilog_bison.y"
    {(yyval.node) = newGateInstance((yyvsp[(1) - (6)].id_name), (yyvsp[(3) - (6)].node), (yyvsp[(5) - (6)].node), NULL, yylineno);;}
    break;

  case 47:
#line 205 "SRC/verilog_bison.y"
    {(yyval.node) = newGateInstance(NULL, (yyvsp[(2) - (5)].node), (yyvsp[(4) - (5)].node), NULL, yylineno);;}
    break;

  case 48:
#line 209 "SRC/verilog_bison.y"
    {(yyval.node) = newModuleInstance((yyvsp[(1) - (2)].id_name), (yyvsp[(2) - (2)].node), yylineno);;}
    break;

  case 49:
#line 212 "SRC/verilog_bison.y"
    {(yyval.node) = newModuleNamedInstance((yyvsp[(1) - (5)].id_name), (yyvsp[(3) - (5)].node), NULL, yylineno);;}
    break;

  case 50:
#line 213 "SRC/verilog_bison.y"
    {(yyval.node) = newModuleNamedInstance((yyvsp[(5) - (9)].id_name), (yyvsp[(7) - (9)].node), (yyvsp[(3) - (9)].node), yylineno); ;}
    break;

  case 51:
#line 214 "SRC/verilog_bison.y"
    {(yyval.node) = newModuleNamedInstance((yyvsp[(1) - (4)].id_name), NULL, NULL, yylineno);;}
    break;

  case 52:
#line 215 "SRC/verilog_bison.y"
    {(yyval.node) = newModuleNamedInstance((yyvsp[(5) - (8)].id_name), NULL, (yyvsp[(3) - (8)].node), yylineno);;}
    break;

  case 53:
#line 218 "SRC/verilog_bison.y"
    {(yyval.node) = newList_entry((yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node));;}
    break;

  case 54:
#line 219 "SRC/verilog_bison.y"
    {(yyval.node) = newList(MODULE_CONNECT_LIST, (yyvsp[(1) - (1)].node));;}
    break;

  case 55:
#line 222 "SRC/verilog_bison.y"
    {(yyval.node) = newModuleConnection((yyvsp[(2) - (5)].id_name), (yyvsp[(4) - (5)].node), yylineno);;}
    break;

  case 56:
#line 223 "SRC/verilog_bison.y"
    {(yyval.node) = newModuleConnection(NULL, (yyvsp[(1) - (1)].node), yylineno);;}
    break;

  case 57:
#line 226 "SRC/verilog_bison.y"
    {(yyval.node) = newList_entry((yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node));;}
    break;

  case 58:
#line 227 "SRC/verilog_bison.y"
    {(yyval.node) = newList(MODULE_PARAMETER_LIST, (yyvsp[(1) - (1)].node));;}
    break;

  case 59:
#line 230 "SRC/verilog_bison.y"
    {(yyval.node) = newModuleParameter((yyvsp[(2) - (5)].id_name), (yyvsp[(4) - (5)].node), yylineno);;}
    break;

  case 60:
#line 231 "SRC/verilog_bison.y"
    {(yyval.node) = newModuleParameter(NULL, (yyvsp[(1) - (1)].node), yylineno);;}
    break;

  case 61:
#line 235 "SRC/verilog_bison.y"
    {(yyval.node) = newAlways((yyvsp[(2) - (3)].node), (yyvsp[(3) - (3)].node), yylineno);;}
    break;

  case 62:
#line 238 "SRC/verilog_bison.y"
    {(yyval.node) = (yyvsp[(1) - (1)].node);;}
    break;

  case 63:
#line 239 "SRC/verilog_bison.y"
    {(yyval.node) = (yyvsp[(1) - (2)].node);;}
    break;

  case 64:
#line 240 "SRC/verilog_bison.y"
    {(yyval.node) = (yyvsp[(1) - (2)].node);;}
    break;

  case 65:
#line 241 "SRC/verilog_bison.y"
    {(yyval.node) = newIf((yyvsp[(3) - (5)].node), (yyvsp[(5) - (5)].node), NULL, yylineno);;}
    break;

  case 66:
#line 242 "SRC/verilog_bison.y"
    {(yyval.node) = newIf((yyvsp[(3) - (7)].node), (yyvsp[(5) - (7)].node), (yyvsp[(7) - (7)].node), yylineno);;}
    break;

  case 67:
#line 243 "SRC/verilog_bison.y"
    {(yyval.node) = newCase((yyvsp[(3) - (6)].node), (yyvsp[(5) - (6)].node), yylineno);;}
    break;

  case 68:
#line 244 "SRC/verilog_bison.y"
    {(yyval.node) = newFor((yyvsp[(3) - (9)].node), (yyvsp[(5) - (9)].node), (yyvsp[(7) - (9)].node), (yyvsp[(9) - (9)].node), yylineno);;}
    break;

  case 69:
#line 245 "SRC/verilog_bison.y"
    {(yyval.node) = newWhile((yyvsp[(3) - (5)].node), (yyvsp[(5) - (5)].node), yylineno);;}
    break;

  case 70:
#line 246 "SRC/verilog_bison.y"
    {(yyval.node) = NULL;;}
    break;

  case 71:
#line 249 "SRC/verilog_bison.y"
    {(yyval.node) = newBlocking((yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node), yylineno);;}
    break;

  case 72:
#line 250 "SRC/verilog_bison.y"
    {(yyval.node) = newBlocking((yyvsp[(1) - (4)].node), (yyvsp[(4) - (4)].node), yylineno);;}
    break;

  case 73:
#line 253 "SRC/verilog_bison.y"
    {(yyval.node) = newNonBlocking((yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node), yylineno);;}
    break;

  case 74:
#line 254 "SRC/verilog_bison.y"
    {(yyval.node) = newNonBlocking((yyvsp[(1) - (4)].node), (yyvsp[(4) - (4)].node), yylineno);;}
    break;

  case 75:
#line 257 "SRC/verilog_bison.y"
    {(yyval.node) = newList_entry((yyvsp[(1) - (2)].node), (yyvsp[(2) - (2)].node));;}
    break;

  case 76:
#line 258 "SRC/verilog_bison.y"
    {(yyval.node) = newList(CASE_LIST, (yyvsp[(1) - (1)].node));;}
    break;

  case 77:
#line 261 "SRC/verilog_bison.y"
    {(yyval.node) = newCaseItem((yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node), yylineno);;}
    break;

  case 78:
#line 262 "SRC/verilog_bison.y"
    {(yyval.node) = newDefaultCase((yyvsp[(3) - (3)].node), yylineno);;}
    break;

  case 79:
#line 265 "SRC/verilog_bison.y"
    {(yyval.node) = (yyvsp[(2) - (3)].node);;}
    break;

  case 80:
#line 268 "SRC/verilog_bison.y"
    {(yyval.node) = newList_entry((yyvsp[(1) - (2)].node), (yyvsp[(2) - (2)].node));;}
    break;

  case 81:
#line 269 "SRC/verilog_bison.y"
    {(yyval.node) = newList(BLOCK, (yyvsp[(1) - (1)].node));;}
    break;

  case 82:
#line 272 "SRC/verilog_bison.y"
    {(yyval.node) = (yyvsp[(3) - (4)].node);;}
    break;

  case 83:
#line 273 "SRC/verilog_bison.y"
    {(yyval.node) = NULL;;}
    break;

  case 84:
#line 277 "SRC/verilog_bison.y"
    {(yyval.node) = newList_entry((yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node));;}
    break;

  case 85:
#line 278 "SRC/verilog_bison.y"
    {(yyval.node) = newList(DELAY_CONTROL, (yyvsp[(1) - (1)].node));;}
    break;

  case 86:
#line 281 "SRC/verilog_bison.y"
    {(yyval.node) = (yyvsp[(1) - (1)].node);;}
    break;

  case 87:
#line 282 "SRC/verilog_bison.y"
    {(yyval.node) = newPosedgeSymbol((yyvsp[(2) - (2)].id_name), yylineno);;}
    break;

  case 88:
#line 283 "SRC/verilog_bison.y"
    {(yyval.node) = newNegedgeSymbol((yyvsp[(2) - (2)].id_name), yylineno);;}
    break;

  case 89:
#line 286 "SRC/verilog_bison.y"
    {(yyval.node) = (yyvsp[(1) - (1)].node);;}
    break;

  case 90:
#line 287 "SRC/verilog_bison.y"
    {(yyval.node) = newUnaryOperation(ADD, (yyvsp[(2) - (2)].node), yylineno);;}
    break;

  case 91:
#line 288 "SRC/verilog_bison.y"
    {(yyval.node) = newUnaryOperation(MINUS, (yyvsp[(2) - (2)].node), yylineno);;}
    break;

  case 92:
#line 289 "SRC/verilog_bison.y"
    {(yyval.node) = newUnaryOperation(BITWISE_NOT, (yyvsp[(2) - (2)].node), yylineno);;}
    break;

  case 93:
#line 290 "SRC/verilog_bison.y"
    {(yyval.node) = newUnaryOperation(BITWISE_AND, (yyvsp[(2) - (2)].node), yylineno);;}
    break;

  case 94:
#line 291 "SRC/verilog_bison.y"
    {(yyval.node) = newUnaryOperation(BITWISE_OR, (yyvsp[(2) - (2)].node), yylineno);;}
    break;

  case 95:
#line 292 "SRC/verilog_bison.y"
    {(yyval.node) = newUnaryOperation(BITWISE_NAND, (yyvsp[(2) - (2)].node), yylineno);;}
    break;

  case 96:
#line 293 "SRC/verilog_bison.y"
    {(yyval.node) = newUnaryOperation(BITWISE_NOR, (yyvsp[(2) - (2)].node), yylineno);;}
    break;

  case 97:
#line 294 "SRC/verilog_bison.y"
    {(yyval.node) = newUnaryOperation(BITWISE_XNOR, (yyvsp[(2) - (2)].node), yylineno);;}
    break;

  case 98:
#line 295 "SRC/verilog_bison.y"
    {(yyval.node) = newUnaryOperation(LOGICAL_NOT, (yyvsp[(2) - (2)].node), yylineno);;}
    break;

  case 99:
#line 296 "SRC/verilog_bison.y"
    {(yyval.node) = newUnaryOperation(BITWISE_XOR, (yyvsp[(2) - (2)].node), yylineno);;}
    break;

  case 100:
#line 297 "SRC/verilog_bison.y"
    {(yyval.node) = newBinaryOperation(BITWISE_XOR, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node), yylineno);;}
    break;

  case 101:
#line 298 "SRC/verilog_bison.y"
    {(yyval.node) = newBinaryOperation(MULTIPLY, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node), yylineno);;}
    break;

  case 102:
#line 299 "SRC/verilog_bison.y"
    {(yyval.node) = newBinaryOperation(DIVIDE, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node), yylineno);;}
    break;

  case 103:
#line 300 "SRC/verilog_bison.y"
    {(yyval.node) = newBinaryOperation(MODULO, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node), yylineno);;}
    break;

  case 104:
#line 301 "SRC/verilog_bison.y"
    {(yyval.node) = newBinaryOperation(ADD, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node), yylineno);;}
    break;

  case 105:
#line 302 "SRC/verilog_bison.y"
    {(yyval.node) = newBinaryOperation(MINUS, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node), yylineno);;}
    break;

  case 106:
#line 303 "SRC/verilog_bison.y"
    {(yyval.node) = newBinaryOperation(BITWISE_AND, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node), yylineno);;}
    break;

  case 107:
#line 304 "SRC/verilog_bison.y"
    {(yyval.node) = newBinaryOperation(BITWISE_OR, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node), yylineno);;}
    break;

  case 108:
#line 305 "SRC/verilog_bison.y"
    {(yyval.node) = newBinaryOperation(BITWISE_NAND, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node), yylineno);;}
    break;

  case 109:
#line 306 "SRC/verilog_bison.y"
    {(yyval.node) = newBinaryOperation(BITWISE_NOR, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node), yylineno);;}
    break;

  case 110:
#line 307 "SRC/verilog_bison.y"
    {(yyval.node) = newBinaryOperation(BITWISE_XNOR, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node), yylineno);;}
    break;

  case 111:
#line 308 "SRC/verilog_bison.y"
    {(yyval.node) = newBinaryOperation(LT, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node), yylineno);;}
    break;

  case 112:
#line 309 "SRC/verilog_bison.y"
    {(yyval.node) = newBinaryOperation(GT, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node), yylineno);;}
    break;

  case 113:
#line 310 "SRC/verilog_bison.y"
    {(yyval.node) = newBinaryOperation(SR, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node), yylineno);;}
    break;

  case 114:
#line 311 "SRC/verilog_bison.y"
    {(yyval.node) = newBinaryOperation(SL, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node), yylineno);;}
    break;

  case 115:
#line 312 "SRC/verilog_bison.y"
    {(yyval.node) = newBinaryOperation(LOGICAL_EQUAL, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node), yylineno);;}
    break;

  case 116:
#line 313 "SRC/verilog_bison.y"
    {(yyval.node) = newBinaryOperation(NOT_EQUAL, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node), yylineno);;}
    break;

  case 117:
#line 314 "SRC/verilog_bison.y"
    {(yyval.node) = newBinaryOperation(LTE, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node), yylineno);;}
    break;

  case 118:
#line 315 "SRC/verilog_bison.y"
    {(yyval.node) = newBinaryOperation(GTE, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node), yylineno);;}
    break;

  case 119:
#line 316 "SRC/verilog_bison.y"
    {(yyval.node) = newBinaryOperation(CASE_EQUAL, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node), yylineno);;}
    break;

  case 120:
#line 317 "SRC/verilog_bison.y"
    {(yyval.node) = newBinaryOperation(CASE_NOT_EQUAL, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node), yylineno);;}
    break;

  case 121:
#line 318 "SRC/verilog_bison.y"
    {(yyval.node) = newBinaryOperation(LOGICAL_OR, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node), yylineno);;}
    break;

  case 122:
#line 319 "SRC/verilog_bison.y"
    {(yyval.node) = newBinaryOperation(LOGICAL_AND, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node), yylineno);;}
    break;

  case 123:
#line 320 "SRC/verilog_bison.y"
    {(yyval.node) = newIfQuestion((yyvsp[(1) - (5)].node), (yyvsp[(3) - (5)].node), (yyvsp[(5) - (5)].node), yylineno);;}
    break;

  case 124:
#line 321 "SRC/verilog_bison.y"
    {(yyval.node) = (yyvsp[(2) - (3)].node);;}
    break;

  case 125:
#line 325 "SRC/verilog_bison.y"
    {(yyval.node) = newListReplicate( (yyvsp[(2) - (6)].node), (yyvsp[(4) - (6)].node) ); ;}
    break;

  case 126:
#line 326 "SRC/verilog_bison.y"
    {(yyval.node) = newListReplicate( (yyvsp[(2) - (6)].node), (yyvsp[(4) - (6)].node) ); ;}
    break;

  case 127:
#line 329 "SRC/verilog_bison.y"
    {(yyval.node) = newNumberNode((yyvsp[(1) - (1)].num_value), yylineno);;}
    break;

  case 128:
#line 330 "SRC/verilog_bison.y"
    {(yyval.node) = newSymbolNode((yyvsp[(1) - (1)].id_name), yylineno);;}
    break;

  case 129:
#line 331 "SRC/verilog_bison.y"
    {(yyval.node) = newArrayRef((yyvsp[(1) - (4)].id_name), (yyvsp[(3) - (4)].node), yylineno);;}
    break;

  case 130:
#line 332 "SRC/verilog_bison.y"
    {(yyval.node) = newRangeRef((yyvsp[(1) - (6)].id_name), (yyvsp[(3) - (6)].node), (yyvsp[(5) - (6)].node), yylineno);;}
    break;

  case 131:
#line 333 "SRC/verilog_bison.y"
    {(yyval.node) = (yyvsp[(2) - (3)].node); ((yyvsp[(2) - (3)].node))->types.concat.num_bit_strings = -1;;}
    break;

  case 132:
#line 336 "SRC/verilog_bison.y"
    {(yyval.node) = newList_entry((yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); /* note this will be in order lsb = greatest to msb = 0 in the node child list */;}
    break;

  case 133:
#line 337 "SRC/verilog_bison.y"
    {(yyval.node) = newList(CONCATENATE, (yyvsp[(1) - (1)].node));;}
    break;


/* Line 1267 of yacc.c.  */
#line 2698 "SRC/verilog_bison.c"
      default: break;
    }
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;


  /* Now `shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */

  yyn = yyr1[yyn];

  yystate = yypgoto[yyn - YYNTOKENS] + *yyssp;
  if (0 <= yystate && yystate <= YYLAST && yycheck[yystate] == *yyssp)
    yystate = yytable[yystate];
  else
    yystate = yydefgoto[yyn - YYNTOKENS];

  goto yynewstate;


/*------------------------------------.
| yyerrlab -- here on detecting error |
`------------------------------------*/
yyerrlab:
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
      {
	YYSIZE_T yysize = yysyntax_error (0, yystate, yychar);
	if (yymsg_alloc < yysize && yymsg_alloc < YYSTACK_ALLOC_MAXIMUM)
	  {
	    YYSIZE_T yyalloc = 2 * yysize;
	    if (! (yysize <= yyalloc && yyalloc <= YYSTACK_ALLOC_MAXIMUM))
	      yyalloc = YYSTACK_ALLOC_MAXIMUM;
	    if (yymsg != yymsgbuf)
	      YYSTACK_FREE (yymsg);
	    yymsg = (char *) YYSTACK_ALLOC (yyalloc);
	    if (yymsg)
	      yymsg_alloc = yyalloc;
	    else
	      {
		yymsg = yymsgbuf;
		yymsg_alloc = sizeof yymsgbuf;
	      }
	  }

	if (0 < yysize && yysize <= yymsg_alloc)
	  {
	    (void) yysyntax_error (yymsg, yystate, yychar);
	    yyerror (yymsg);
	  }
	else
	  {
	    yyerror (YY_("syntax error"));
	    if (yysize != 0)
	      goto yyexhaustedlab;
	  }
      }
#endif
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse look-ahead token after an
	 error, discard it.  */

      if (yychar <= YYEOF)
	{
	  /* Return failure if at end of input.  */
	  if (yychar == YYEOF)
	    YYABORT;
	}
      else
	{
	  yydestruct ("Error: discarding",
		      yytoken, &yylval);
	  yychar = YYEMPTY;
	}
    }

  /* Else will try to reuse look-ahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:

  /* Pacify compilers like GCC when the user code never invokes
     YYERROR and the label yyerrorlab therefore never appears in user
     code.  */
  if (/*CONSTCOND*/ 0)
     goto yyerrorlab;

  /* Do not reclaim the symbols of the rule which action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;	/* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (yyn != YYPACT_NINF)
	{
	  yyn += YYTERROR;
	  if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
	    {
	      yyn = yytable[yyn];
	      if (0 < yyn)
		break;
	    }
	}

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
	YYABORT;


      yydestruct ("Error: popping",
		  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  if (yyn == YYFINAL)
    YYACCEPT;

  *++yyvsp = yylval;


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;

/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;

#ifndef yyoverflow
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif

yyreturn:
  if (yychar != YYEOF && yychar != YYEMPTY)
     yydestruct ("Cleanup: discarding lookahead",
		 yytoken, &yylval);
  /* Do not reclaim the symbols of the rule which action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
		  yystos[*yyssp], yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  /* Make sure YYID is used.  */
  return YYID (yyresult);
}


#line 340 "SRC/verilog_bison.y"


