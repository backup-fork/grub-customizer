/*
 * Copyright (C) 2010-2011 Daniel Richter <danielrichter2007@web.de>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA
 */

#ifndef DEVICE_DATALIST_INCLUDED
#define DEVICE_DATALIST_INCLUDED
#include <map>
#include <cstdio>
#include <string>
#include "DeviceDataListInterface.hpp"
#include "../Logger/Trait/LoggerAware.hpp"

namespace Gc { namespace Model { namespace Device { class DeviceDataList :
	public Gc::Model::Device::DeviceDataListInterface,
	public Gc::Model::Logger::Trait::LoggerAware
{
	public: DeviceDataList(FILE* blkidOutput)
	{
		loadData(blkidOutput);
	}

	public: DeviceDataList() {}

	public: void loadData(FILE* blkidOutput)
	{
		std::string deviceName, attributeName;
		bool inAttributeValue = false;
		bool deviceNameIsComplete = false, attributeNameIsComplete = false;
		int c;
		while ((c = fgetc(blkidOutput)) != EOF){
			if (inAttributeValue && c != '"'){
				(*this)[deviceName][attributeName] += c;
			}
			else {
				if (c == '\n'){
					deviceName = "";
					deviceNameIsComplete = false;
				}
				else if (c == ':'){
					deviceNameIsComplete = true;
				}
				else if (!deviceNameIsComplete) {
					deviceName += c;
				}
				else if (c != '=' && !attributeNameIsComplete) {
					if (c != ' ')
						attributeName += c;
				}
				else if (c == '=')
					attributeNameIsComplete = true;
				else if (c == '"'){
					if (inAttributeValue){
						attributeName = "";
						attributeNameIsComplete = false;
					}
					inAttributeValue = !inAttributeValue;
				}
			}
		}
	}

	public: void clear()
	{
		this->std::map<std::string, std::map<std::string, std::string> >::clear();
	}

	public: std::string getDeviceByUuid(std::string const& uuid) const
	{
		for (std::map<std::string, std::map<std::string, std::string> >::const_iterator iter = this->begin(); iter != this->end(); iter++) {
			if (iter->second.find("UUID") != iter->second.end() && iter->second.at("UUID") == uuid) {
				return iter->first;
			}
		}
		throw Gc::Common::Exception::ItemNotFoundException("no device found by uuid " + uuid, __FILE__, __LINE__);
	}

};}}}


#endif
