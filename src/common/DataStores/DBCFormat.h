/*
 * This file is part of the AzerothCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef DBC_FORMAT_H
#define DBC_FORMAT_H

#include "Define.h"

// Describes one column of a data store record. A format string holds one of
// these per column of the source table, in table order, and so describes both
// the in-memory record layout and the columns the loader expects to read.
enum DbcFieldFormat
{
    FT_NA = 'x',                                              //not used or unknown, 4 byte size
    FT_NA_BYTE = 'X',                                         //not used or unknown, byte
    FT_STRING = 's',                                          //char*
    FT_FLOAT = 'f',                                           //float
    FT_INT = 'i',                                             //uint32
    FT_BYTE = 'b',                                            //uint8
    FT_SORT = 'd',                                            //sorted by this field, field is not included
    FT_IND = 'n',                                             //the same, but parsed to data
    FT_LOGIC = 'l'                                            //Logical (boolean)
};

namespace DBC
{
    /**
     * @brief Size of the C++ record a format string describes.
     *
     * @param format Format string, one character per source column.
     * @param indexPos Receives the format position of the index column, or -1
     *                 when the format declares none.
     * @return Record size in bytes.
     */
    AC_COMMON_API uint32 GetFormatRecordSize(char const* format, int32* indexPos = nullptr);
}

#endif
