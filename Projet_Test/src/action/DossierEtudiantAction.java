package action;


import managers.DossierEtudiantManager;

public class DossierEtudiantAction {

	public static void addDossierEtudiant(String prenom,String nom,String courriel,String programmes,String sessions){
		DossierEtudiantManager.addDossierEtudiant(prenom, nom, courriel,programmes,sessions);
	}
	
}
