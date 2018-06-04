<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String[]choix_progs=(String[])request.getAttribute("choix_prog"); 
    String[]choix_session=(String[])request.getAttribute("choix_session"); 
    String prenom=(String)request.getAttribute("prenom");
    String nom=(String)request.getAttribute("nom");
    String courriel=(String)request.getAttribute("courriel");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Page de confirmation</title>
</head>
<body>
<h2>Demande d'admission envoyée</h2>

<h2>Informations personnelles :</h2>
<h3><%=prenom %></h3>
<h3><%=nom %></h3>
<h3><%=courriel %></h3>
<br>

<h2>Choix des programmes : </h2>

<%if(choix_progs!=null){
	for(String prog:choix_progs){%>
	<h3><%=prog %></h3>
		<%}
	} %>
<br>

<h2>Choix des sessions : </h2>

<%if(choix_session!=null){
	for(String s:choix_session){%>
	<h3><%=s %></h3>
	<%}
	} %>
</body>
</html>