//===========================================================================//
// Purpose : Declaration and inline definitions for a (regexp) TC_Bit class.
//
//           Inline methods include:
//           - IsTrue
//           - IsFalse
//           - IsValid
//
//===========================================================================//

//---------------------------------------------------------------------------//
// Copyright (C) 2012 Jeff Rudolph, Texas Instruments (jrudolph@ti.com)      //
//                                                                           //
// This program is free software; you can redistribute it and/or modify it   //
// under the terms of the GNU General Public License as published by the     //
// Free Software Foundation; version 3 of the License, or any later version. //
//                                                                           //
// This program is distributed in the hope that it will be useful, but       //
// WITHOUT ANY WARRANTY; without even an implied warranty of MERCHANTABILITY //
// or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License   //
// for more details.                                                         //
//                                                                           //
// You should have received a copy of the GNU General Public License along   //
// with this program; if not, see <http://www.gnu.org/licenses>.             //
//---------------------------------------------------------------------------//

#ifndef TC_BIT_H
#define TC_BIT_H

#include <cstdio>
#include <string>
using namespace std;

#include "TC_Typedefs.h"

//===========================================================================//
// Purpose        : Class declaration
// Author         : Jeff Rudolph
//---------------------------------------------------------------------------//
// Version history
// 05/15/12 jeffr : Original
//===========================================================================//
class TC_Bit_c
{
public:

   TC_Bit_c( TC_BitMode_t value = TC_BIT_UNDEFINED );
   TC_Bit_c( char value );
   TC_Bit_c( const TC_Bit_c& bit );
   ~TC_Bit_c( void );

   TC_Bit_c& operator=( const TC_Bit_c& value );
   bool operator==( const TC_Bit_c& value ) const;
   bool operator!=( const TC_Bit_c& value ) const;

   void Print( FILE* pfile = stdout, size_t spaceLen = 0 ) const;

   void ExtractString( string* psrValue ) const;

   TC_BitMode_t GetValue( void ) const;

   void SetValue( TC_BitMode_t value );
   void SetValue( char value );

   bool IsTrue( void ) const;
   bool IsFalse( void ) const;

   bool IsValid( void ) const;

private:

   char value_; // States include 'true', 'false', 'don't care', and 'undefined'
};

//===========================================================================//
// Purpose        : Class inline definition(s)
// Author         : Jeff Rudolph
//---------------------------------------------------------------------------//
// Version history
// 05/15/12 jeffr : Original
//===========================================================================//
inline bool TC_Bit_c::IsTrue( 
      void ) const
{
   return( this->value_ == TC_BIT_TRUE ? true : false );
}

//===========================================================================//
inline bool TC_Bit_c::IsFalse( 
      void ) const
{
   return( this->value_ == TC_BIT_FALSE ? true : false );
}

//===========================================================================//
inline bool TC_Bit_c::IsValid( 
      void ) const
{
   return( this->value_ != TC_BIT_UNDEFINED ? true : false );
}

#endif 
