package action;

import managers.AdmissionProgrammeLinkManager;
import managers.AdmissionSessionLinkManager;

public class AjouterProgrammeSessionAction {

	public static void ajouterChoixProgramme(String[]programmes) {
		AdmissionProgrammeLinkManager.ajouterChoixProgramme(programmes);
	}
	
	public static void ajouterChoixSession(String[]sessions) {
		AdmissionSessionLinkManager.ajouterChoixSession(sessions);
	}
	
}
