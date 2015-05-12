/* A Bison parser, made by GNU Bison 2.5.  */

/* Bison interface for Yacc-like parsers in C
   
      Copyright (C) 1984, 1989-1990, 2000-2011 Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

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
     SENT = 258,
     LEFT_PAREN = 259,
     ROOT = 260,
     SEN_GRAMMAR = 261,
     TOKEN = 262,
     STRING = 263,
     RIGHT_PAREN = 264,
     ID = 265,
     SEN_GRM = 266,
     LEX_GRM = 267,
     CARG = 268,
     CLASS = 269,
     CASE = 270,
     FORM = 271,
     TAG = 272,
     PRBS = 273
   };
#endif
/* Tokens.  */
#define SENT 258
#define LEFT_PAREN 259
#define ROOT 260
#define SEN_GRAMMAR 261
#define TOKEN 262
#define STRING 263
#define RIGHT_PAREN 264
#define ID 265
#define SEN_GRM 266
#define LEX_GRM 267
#define CARG 268
#define CLASS 269
#define CASE 270
#define FORM 271
#define TAG 272
#define PRBS 273




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


