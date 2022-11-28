<% String APP_ROOT = request.getContextPath(); %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Ajouter Utilisateur</title>
<link rel="stylesheet" href="<%= APP_ROOT %>/css/style.css">
</head>
<body>
	<div id="entete">
		
		<h1>Gestion des utilisateurs</h1> 
		
			<ul>
					<li>
						<a href="/login">Connexion</a>
					
					</li>
					
					if (!sessionScope.isConnected)
					{
					
								<li>
									<a href="<%= APP_ROOT%>/list">Lister</a>
								
								</li>
								
								<li>
									<a href="<%= APP_ROOT%>/add">Ajouter</a>
								
								</li>
							
								<li>
									<a href="<%= APP_ROOT%>/logout">Deconnexion</a>
								
								</li>
								
					}
			
			</ul>
		 
		</div>
</body>
</html>
