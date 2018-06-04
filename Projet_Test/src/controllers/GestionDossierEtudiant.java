package controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import action.*;

/**
 * Servlet implementation class GestionDossierEtudiant
 */
@WebServlet("/GestionDossierEtudiant")
public class GestionDossierEtudiant extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GestionDossierEtudiant() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String prenom=request.getParameter("champ_prenom"),
				nom=request.getParameter("champ_nom"),
				courriel=request.getParameter("champ_courriel"),
				urlRetour="demande_admission.jsp";
		
		String[]choix_programmes=request.getParameterValues("choix_programme");
		String[]choix_sessions=request.getParameterValues("choix_session");
		
		String programmes="",
		sessions="";
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		if(!prenom.equals("") && !nom.equals("") && !courriel.equals("")){
			
			for (String prog : choix_programmes) {
				if(prog!=null)
				programmes+=prog+", ";
			}
			
			for (String sess : choix_sessions) {
				if(sess!=null)
				sessions+=sess+", ";
			}
			
			urlRetour="confirmation.jsp";
			
			request.setAttribute("prenom", prenom);
			request.setAttribute("nom", nom);
			request.setAttribute("courriel", courriel);
			request.setAttribute("choix_prog", choix_programmes);
			request.setAttribute("choix_session", choix_sessions);
			
			DossierEtudiantAction.addDossierEtudiant(prenom, nom, courriel,programmes,sessions);
		}else{
			out.println("<span>Vous devez remplir les champs</span>");
		}
		
		request.getRequestDispatcher(urlRetour).include(request, response);
	}

}
