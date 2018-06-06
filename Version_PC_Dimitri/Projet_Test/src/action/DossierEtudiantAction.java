package action;


import managers.DossierEtudiantManager;

public class DossierEtudiantAction {

	public static void ajouterDossierEtudiant(String prenom,String nom,String courriel){
		DossierEtudiantManager.ajouterDossierEtudiant(prenom, nom, courriel);
	}
	
}
