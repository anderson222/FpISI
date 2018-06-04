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
	public static int addDossierEtudiant(String prenom,String nom,String courriel,String programmes,String sessions) {
		PreparedStatement ps=ConnecteurBD.getPs(queryAddDossierEtudiant,Statement.RETURN_GENERATED_KEYS);
		
		int retour=-1;
		try {
			ps.setString(1, prenom);
			ps.setString(2, nom);
			ps.setString(3, courriel);
			ps.setString(4, programmes);
			ps.setString(5, sessions);
			
			ps.executeUpdate();
			ResultSet result=ps.getGeneratedKeys();
		
		if(result.isBeforeFirst()){
				while(result.next()){
					
				
					java.sql.RowId ri=result.getRowId(1);			
					System.out.println(ri);
					retour=Integer.parseInt(""+ri);
				}
				
				//System.out.println(de.getId());
			}
			ps.close();
		
			
			ConnecteurBD.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return retour;
		
		
		
	}
	
	
}
