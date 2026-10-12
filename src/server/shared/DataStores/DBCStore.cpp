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

#include "DBCStore.h"
#include "DBCDatabaseLoader.h"

DBCStorageBase::DBCStorageBase(char const* fmt) : _recordFormat(fmt), _dataTable(nullptr), _indexTableSize(0)
{
}

DBCStorageBase::~DBCStorageBase()
{
    delete[] _dataTable;
    for (char* strings : _stringPool)
        delete[] strings;
}

void DBCStorageBase::LoadFromDB(char const* table, char const* format, char**& indexTable)
{
    _dataTable = DBCDatabaseLoader(table, format, _stringPool).Load(_indexTableSize, indexTable);
}
