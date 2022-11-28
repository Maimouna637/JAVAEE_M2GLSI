package dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import dao.BDD;
import beans.Utilisateur;


public class UtilisateursDao {

	private static BDD db = new BDD();
	private static int ok;


	public static int ajouterUser(Utilisateur utilisateur) {
		String sql = "INSERT INTO etudiant VALUES(NULL, ?, ?, ?, ?)";
		try{
			db.initPrepar(sql);
			db.getPstm().setString(1, utilisateur.getNom());
			db.getPstm().setString(2, utilisateur.getPrenom());
			db.getPstm().setString(2, utilisateur.getLogin());
			db.getPstm().setString(2, utilisateur.getPassword());

			ok = db.executeUpdate();
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return ok;
	}

	public static List<Utilisateur> listerUser() {

	 try
	 {

	 List<Utilisateur> utilisateurs = new ArrayList<>();

     String sql= "select id,nom,prenom,login,password from utilisateur ";

    	 	db.initPrepar(sql);

    	 	  ResultSet res= db.executeQuery();
    	      while (res.next())
    	      {
    	          utilisateurs.add(new Utilisateur(res.getInt("id"),res.getString("nom"),res.getString("prenom"),res.getString("login"),res.getString("password")));
    	      }
    	      return utilisateurs;

    	} catch (Exception E) {
            System.out.println("Erreur");
    	}
     return null;
}

public static int modifier(Utilisateur utilisateur) {
	String sql = "UPDATE utilisateur SET id = ? where nom = ?";
	try{
		db.initPrepar(sql);
		db.getPstm().setInt(1, utilisateur.getId());
		db.getPstm().setString(2, utilisateur.getNom());

		ok = db.executeUpdate();
	}catch(Exception ex){
		ex.printStackTrace();
	}
	return ok;
}


public static int supprimer(int id) {
	String sql = "DELETE FROM utilisateur where id = ?";
	try{
		db.initPrepar(sql);
		db.getPstm().setInt(1, id);

		ok = db.executeUpdate();
	}catch(Exception ex){
			ex.printStackTrace();
		}
	return ok;
}

public static Utilisateur get(int id) {
	 List<Utilisateur> utilisateurs = new ArrayList<>();
	for(Utilisateur utilisateur: utilisateurs) {
		if(utilisateur.getId() ==id) {
			return utilisateur;
		}
	}
	return null;
}


}

