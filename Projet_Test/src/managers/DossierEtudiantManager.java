package managers;



import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import beans.DossierEtudiant;
import services.ConnecteurBD;

public class DossierEtudiantManager {
	
	/************* Queries *********/
	private static String queryAddDossierEtudiant = "insert into dossier_etudiant (prenom, nom, courriel,choix_programmes,choix_sessions) values (?, ?, ?, ?, ?);";
	
	/************ Fonctions ***************/
	public static void addDossierEtudiant(String prenom,String nom,String courriel,String programmes,String sessions) {
		PreparedStatement ps=ConnecteurBD.getPs(queryAddDossierEtudiant);
		
		try {
			ps.setString(1, prenom);
			ps.setString(2, nom);
			ps.setString(3, courriel);
			ps.setString(4, programmes);
			ps.setString(5, sessions);
			
			ps.executeUpdate();
			
			ps.close();
		
			ConnecteurBD.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
