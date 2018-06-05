<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Page Demande Admission</title>
 <meta name = "viewport" content = "width = device-width, initial-scale = 1">      
      <link rel = "stylesheet"
         href = "https://fonts.googleapis.com/icon?family=Material+Icons">
      <link rel = "stylesheet"
         href = "https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.min.css">
      <script type = "text/javascript"
         src = "https://code.jquery.com/jquery-2.1.1.min.js"></script>           
      <script src = "https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/js/materialize.min.js">
      </script>     
</head>

<body>
	<h1>Demande d'admission</h1>

	<p>Pellentesque habitant morbi tristique senectus et netus et
		malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat
		vitae, ultricies eget, tempor sit amet, ante. <br>Donec eu libero sit amet
		quam egestas semper. Aenean ultricies mi vitae est. <br>Mauris placerat
		eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra.
		Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet,
		wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum
		rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in
		turpis pulvinar facilisis. Ut felis. <br>Praesent dapibus, neque id cursus
		faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat.<br>
		Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor,
		facilisis luctus, metus</p>

	<br>

	<form action="GestionDossierEtudiant" method="post" >
	
		Prénom <br>
		<input type="text" name="champ_prenom" /> <br> 
		<br>
		
		Nom <br>
		<input type="text" name="champ_nom" /> <br> 
		<br>
		
		Courriel <br>
		<input type="text" name="champ_courriel" /> <br>
		<br>

		<h3>Programme d'inscription</h3>
		
		Programmation, réseaux et Télécommunications <input type="checkbox" name="choix_programme" value="ProgrammationReseauTelecom"/> <br> 
		
		Programmation et technologies internet <input type="checkbox" name="choix_programme" value="ProgrammationInternet"/> <br>
		
		Réseau, sécurite et téléphonie IP <input type="checkbox" name="choix_programme" value="ReseauSecuriteTelephonie"/> <br> 
		
		Intégration de systèmes d'information <input type="checkbox" name="choix_programme" value="IntegrationSystemesInformation"/> <br>
		
		Intégration de sites web <input type="checkbox" name="choix_programme" value="IntegrationWeb"/><br> 
		
		Gestion de projets informatiques <input type="checkbox" name="choix_programme" value="GestionProjets"/> 
		<br>

		<h3>Session</h3>
		
		Session Automne 2018 <input type="checkbox" name="choix_session" value="Automne2018"/> <br>
		
		Session Hiver 2019 <input type="checkbox" name="choix_session" value="Hiver2019"/> <br> 
		
		Session Été 2019 <input type="checkbox" name="choix_session" value="Ete2019"/> <br> 
		
		Session Automne 2019 <input type="checkbox" name="choix_session" value="Automne2019"/> <br> 
		
		Session Hiver 2020 <input type="checkbox" name="choix_session" value="Hiver2020"/> <br> 
		
		Session Été 2020 <input type="checkbox" name="choix_session" value="Ete2020"/> <br> 
		<br> 
		
		
		<br>
		<br>
		<br>
		
		<input type="submit" value="Soumettre" />
		
	</form>

</body>
</html>