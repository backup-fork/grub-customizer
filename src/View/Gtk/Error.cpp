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

#include "Error.h"

View_Gtk_Error::View_Gtk_Error()
	: eventListener(NULL)
{
}
void View_Gtk_Error::setEventListener(ErrorController& eventListener) {
	this->eventListener = &eventListener;
}

void View_Gtk_Error::showErrorMessage(std::string const& errorMessage, bool allowContinue) {
	Gtk::MessageDialog msgDlg("An error occurred", false, Gtk::MESSAGE_ERROR, Gtk::BUTTONS_NONE, true);
	msgDlg.set_secondary_text(gettext("please Inform the author about this problem. The following information could be helpful:") + std::string("\n\n") + errorMessage);
	msgDlg.set_title(gettext("An error occurred"));
	msgDlg.add_button(Gtk::Stock::QUIT, Gtk::RESPONSE_CLOSE);
	if (allowContinue) {
		msgDlg.add_button(gettext("continue (risk data loss)"), Gtk::RESPONSE_CANCEL);
	}
	if (msgDlg.run() == Gtk::RESPONSE_CLOSE) {
		this->eventListener->quitAction();
	}
}
