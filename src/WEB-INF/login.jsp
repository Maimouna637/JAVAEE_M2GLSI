<%@include file="inc/header.jsp" %>
		
	<h1 id="ajout">Authentification d'un utilisateur</h1>
	
	 if (connexionFailed == true){
		<p class="erreur">Login et/ou mot de passe incorrect</p>
	}
	
	<div id="form">
			<form method="post">
			
						<fieldset>
						
						<legend>login</legend>
						
						<div class="formItem">
						<label>Login</label><br/>
						 <input type="text" name ="login"/><br/>
						 </div>
						 
						 <div class="formItem">
						 <label>Password</label><br/>
						 <input type="text" name ="password"/><br/>
						 </div>
						 
		
						  
						   <input class="btn" type="submit" value ="Ajouter"/><br/>
						</fieldset>
			</form>
			
			</div>

</body>
</html>
