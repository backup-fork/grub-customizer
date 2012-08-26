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
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#ifndef CONTROLLERCOLLECTION_H_
#define CONTROLLERCOLLECTION_H_
#include "Controller/EntryEditController.h"
#include "Controller/MainController.h"
#include "Controller/SettingsController.h"
#include "Controller/EnvEditorController.h"
#include "Controller/TrashController.h"
#include "Controller/InstallerController.h"
#include "Controller/AboutController.h"

struct ControllerCollection {
	EntryEditController* entryEditController;
	MainController* mainController;
	SettingsController* settingsController;
	EnvEditorController* envEditController;
	TrashController* trashController;
	InstallerController* installerController;
	AboutController* aboutController;
};


#endif /* CONTROLLERCOLLECTION_H_ */
