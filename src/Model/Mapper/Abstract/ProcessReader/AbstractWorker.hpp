/*
 * Copyright (C) 2010-2014 Daniel Richter <danielrichter2007@web.de>
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

#ifndef SRC_MODEL_MAPPER_ABSTRACT_PROCESSREADER_ABSTRACTWORKER_HPP_
#define SRC_MODEL_MAPPER_ABSTRACT_PROCESSREADER_ABSTRACTWORKER_HPP_

#include <functional>
#include <string>

class Model_Mapper_Abstract_ProcessReader_AbstractWorker
{
	public: std::string command;
	public: std::function<void (char)> onReceive;
	public: std::function<void (int)> onFinish;
};


#endif /* SRC_MODEL_MAPPER_ABSTRACT_PROCESSREADER_ABSTRACTWORKER_HPP_ */