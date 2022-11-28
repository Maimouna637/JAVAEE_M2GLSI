<%@include file="inc/header.jsp" %>
	
	<h1 id="ajout">Modification utilisateur</h1>
	<% Utilisateur utilisateur = (Utilisateur) request.getAttribute("utilisateur"); %>
	
	<div id="form">
				<form method="post">
						<fieldset>
						<legend>Modifier</legend>
						
						<div class="formItem">
						<label for="nom">Nom</label><br/>
						 <input type="text" name ="nom" value=<%=utilisateur.getNom() %>><br/>
						 </div>
						 
						 <div class="formItem">
						 <label for="prenom">Prenom</label><br/>
						 <input type="text" name ="prenom" value=<%=utilisateur.getPrenom() %>><br/>
						  </div>
						  
						 <div class="formItem">
						 <label for="login">Login</label><br/>
						 <input type="text" name ="login" value=<%=utilisateur.getLogin() %>><br/>
						  </div>
						 
						 <div class="formItem">
						 <label>Mot de passe</label><br/>
						  <input type="password" name ="mdp" value=<%=utilisateur.getPassword() %>><br/>
						   </div>
						  
						   <input  class="btn" type="submit" value ="Modifier"><br/>
						</fieldset>
				
				</form>
				
		</div>		
</body>
</html>
