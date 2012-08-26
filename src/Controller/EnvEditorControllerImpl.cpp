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

#include "EnvEditorControllerImpl.h"

EnvEditorControllerImpl::EnvEditorControllerImpl(Model_Env& env)
	: mountTable(NULL),
	 env(env),
	 view(NULL)
{
}

void EnvEditorControllerImpl::setMountTable(Model_MountTable& mountTable){
	this->mountTable = &mountTable;
}

void EnvEditorControllerImpl::setView(View_EnvEditor& view) {
	this->view = &view;
}

void EnvEditorControllerImpl::showAction(bool resetPartitionChooser) {
	this->view->setEnvSettings(this->env.getProperties(), this->env.getRequiredProperties(), this->env.getValidProperties());
	this->view->setRootDeviceName(this->env.rootDeviceName);
	this->view->show(resetPartitionChooser);
}


void EnvEditorControllerImpl::generateSubmountpointSelection(std::string const& prefix){
	this->view->removeAllSubmountpoints();

	//create new submountpoint checkbuttons
	for (Model_MountTable::const_iterator iter = mountTable->begin(); iter != mountTable->end(); iter++){
		if (iter->mountpoint.length() > prefix.length() && iter->mountpoint.substr(0, prefix.length()) == prefix
		 && iter->mountpoint != prefix + "/dev"
		 && iter->mountpoint != prefix + "/proc"
		 && iter->mountpoint != prefix + "/sys"
		) {
			this->view->addSubmountpoint(iter->mountpoint.substr(prefix.length()), iter->isMounted);
		}
	}
}

void EnvEditorControllerImpl::switchPartitionAction(std::string const& newPartition) {
	if (this->mountTable->getEntryByMountpoint(PARTCHOOSER_MOUNTPOINT).isMounted) {
		this->mountTable->umountAll(PARTCHOOSER_MOUNTPOINT);
		this->mountTable->clear(PARTCHOOSER_MOUNTPOINT);
	}
	this->view->removeAllSubmountpoints();
	std::string selectedDevice = newPartition;
	if (newPartition != "") {
		mkdir(PARTCHOOSER_MOUNTPOINT, 0755);
		try {
			mountTable->clear(PARTCHOOSER_MOUNTPOINT);
			mountTable->mountRootFs(selectedDevice, PARTCHOOSER_MOUNTPOINT);
			this->env.init(env.burgMode ? Model_Env::BURG_MODE : Model_Env::GRUB_MODE, PARTCHOOSER_MOUNTPOINT);
			this->generateSubmountpointSelection(PARTCHOOSER_MOUNTPOINT);
			this->showAction();
		}
		catch (Model_MountTable_Mountpoint::Exception const& e) {
			if (e == Model_MountTable_Mountpoint::MOUNT_FAILED){
				this->view->showErrorMessage(View_EnvEditor::MOUNT_FAILED);
				this->switchPartitionAction("");
			}
		}
		catch (Model_MountTable::Exception const& e) {
			if (e == Model_MountTable::MOUNT_ERR_NO_FSTAB){
				this->view->showErrorMessage(View_EnvEditor::MOUNT_ERR_NO_FSTAB);
				mountTable->getEntryRefByMountpoint(PARTCHOOSER_MOUNTPOINT).umount();
				this->switchPartitionAction("");
			}
		}
	} else {
		this->env.init(env.burgMode ? Model_Env::BURG_MODE : Model_Env::GRUB_MODE, selectedDevice);
		this->showAction(true);
	}
}

void EnvEditorControllerImpl::switchBootloaderTypeAction(int newTypeIndex) {
	this->env.init(newTypeIndex == 0 ? Model_Env::GRUB_MODE : Model_Env::BURG_MODE, this->env.cfg_dir_prefix);
	this->showAction();
}

void EnvEditorControllerImpl::updateGrubEnvOptionsAction() {
	this->env.setProperties(this->view->getEnvSettings());
	this->showAction();
}

void EnvEditorControllerImpl::applyAction(bool saveConfig){
//	listCfgDlg->setLockState(1|2|8);
//	this->syncSettings();
	this->getAllControllers().settingsController->hideAction();
	this->getAllControllers().trashController->hideAction();
	bool isBurgMode = this->view->getBootloaderType() == 1;
	view->hide();

	if (saveConfig) {
		this->env.save();
	}
	this->getAllControllers().mainController->reInitAction(isBurgMode);
}

void EnvEditorControllerImpl::exitAction() {
	this->getAllControllers().mainController->exitAction(true);
}

void EnvEditorControllerImpl::mountSubmountpointAction(std::string const& submountpoint){
	try {
		this->mountTable->getEntryRefByMountpoint(PARTCHOOSER_MOUNTPOINT + submountpoint).mount();
	}
	catch (Model_MountTable_Mountpoint::Exception const& e){
		if (e == Model_MountTable_Mountpoint::MOUNT_FAILED){
			this->view->showErrorMessage(View_EnvEditor::SUB_MOUNT_FAILED);
		}
		this->view->setSubmountpointSelectionState(submountpoint, false);
		this->view->show();
	}
}

void EnvEditorControllerImpl::umountSubmountpointAction(std::string const& submountpoint){
	try {
		this->mountTable->getEntryRefByMountpoint(PARTCHOOSER_MOUNTPOINT + submountpoint).umount();
	}
	catch (Model_MountTable_Mountpoint::Exception const& e){
		if (e == Model_MountTable_Mountpoint::UMOUNT_FAILED){
			this->view->showErrorMessage(View_EnvEditor::SUB_UMOUNT_FAILED);
		}
		this->view->setSubmountpointSelectionState(submountpoint, true);
		this->view->show();
	}
}


void EnvEditorControllerImpl::grubEnvSetRootDeviceName(std::string const& rootDevice) {
	this->view->setRootDeviceName(rootDevice);
}

void EnvEditorControllerImpl::grubEnvsetEnvSettings(std::map<std::string, std::string> const& props, std::list<std::string> const& requiredProps, std::list<std::string> const& validProps) {
	this->view->setEnvSettings(props, requiredProps, validProps);
}

void EnvEditorControllerImpl::grubEnvShow(bool resetPartitionChooser = false) {
	this->view->show();
}
