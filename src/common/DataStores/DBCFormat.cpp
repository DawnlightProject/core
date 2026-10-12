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

#include "DBCFormat.h"
#include "Errors.h"

uint32 DBC::GetFormatRecordSize(char const* format, int32* indexPos /*= nullptr*/)
{
    uint32 recordSize = 0;
    int32 index = -1;

    for (uint32 x = 0; format[x]; ++x)
    {
        switch (format[x])
        {
            case FT_FLOAT:
                recordSize += sizeof(float);
                break;
            case FT_INT:
                recordSize += sizeof(uint32);
                break;
            case FT_STRING:
                recordSize += sizeof(char*);
                break;
            case FT_SORT:
                // The column carries the index but is not kept in the record.
                index = x;
                break;
            case FT_IND:
                index = x;
                recordSize += sizeof(uint32);
                break;
            case FT_BYTE:
                recordSize += sizeof(uint8);
                break;
            case FT_NA:
            case FT_NA_BYTE:
                break;
            case FT_LOGIC:
                ASSERT(false && "Attempted to load a data store whose field types do not match what is in the core. Check DBCfmt.h.");
                break;
            default:
                ASSERT(false && "Unknown field format character in DBCfmt.h");
                break;
        }
    }

    if (indexPos)
    {
        *indexPos = index;
    }

    return recordSize;
}
