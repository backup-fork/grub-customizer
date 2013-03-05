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

#ifndef THEME_H_
#define THEME_H_
#include <string>

class View_Theme {
public:
	virtual void addFile(std::string const& fileName) = 0;
	virtual void clear() = 0;
	virtual void setText(std::string const& text) = 0;
	virtual void setImage(std::string const& path) = 0;
	virtual void selectFile(std::string const& fileName, bool startEdit = false) = 0;
	virtual void addTheme(std::string const& name) = 0;
	virtual void clearThemeSelection() = 0;
	virtual void show() = 0;
	virtual inline ~View_Theme() {};
};

#endif /* THEME_H_ */
