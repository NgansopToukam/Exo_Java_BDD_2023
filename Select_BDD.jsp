<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Connexion à MariaDB via JSP</title>
</head>
<body>
    <h1>Exemple de connexion à MariaDB avec JSP</h1>
    <% 
    String url = "jdbc:mariadb://localhost:3306/films";
    String user = "mysql";
    String password = "mysql";

        // Charger le pilote JDBC (pilote disponible dans WEB-INF/lib)
        Class.forName("org.mariadb.jdbc.Driver");

        // Établir la connexion
        Connection conn = DriverManager.getConnection(url, user, password);
        // Exemple de requête SQL
        String sql = "SELECT idFilm, titre, année FROM Film WHERE année >= 2000";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        ResultSet rs = pstmt.executeQuery();

        // Afficher les résultats (à adapter selon vos besoins)
        while (rs.next()) {
            String colonne1 = rs.getString("idFilm");
            String colonne2 = rs.getString("titre");
            String colonne3 = rs.getString("année");
            // Faites ce que vous voulez avec les données...
            //Exemple d'affichage de 2 colonnes
            out.println("id : " + colonne1 + ", titre : " + colonne2 + ", année : " + colonne3 + "</br>");
        }

        // Fermer les ressources 
        rs.close();
        pstmt.close();
        conn.close();
    %>

<h2>Exercice 1 : Les films entre 2000 et 2015</h2>
<p>Extraire les films dont l'année est supérieur à l'année 2000 et inférieur à 2015.</p>
<p>String requete = "SELECT * FROM Film WHERE année > 2000 AND année < 2015";</p>

<h2>Exercice 2 : Année de recherche</h2>
<p>Créer un champ de saisie permettant à l'utilisateur de choisir l'année de sa recherche.</p>
<p> String anneeRecherche = request.getParameter("annee");

        // Exécuter la requête SQL pour extraire les films pour l'année spécifiée
        if (anneeRecherche != null && !anneeRecherche.isEmpty()) 
            String requete = "SELECT * FROM nom_de_votre_table WHERE annee_sortie = ?";
            PreparedStatement preparedStatement = connexion.prepareStatement(requete);
            preparedStatement.setInt(1, Integer.parseInt(anneeRecherche));
            resultSet = preparedStatement.executeQuery();
</p>

<h2>Exercice 3 : Modification du titre du film</h2>
<p>Créer un fichier permettant de modifier le titre d'un film sur la base de son ID (ID choisi par l'utilisateur)</p>
<p>String idFilm = request.getParameter("idFilm");
        String nouveauTitre = request.getParameter("nouveauTitre");
if (idFilm != null && nouveauTitre != null && !idFilm.isEmpty() && !nouveauTitre.isEmpty()) 
            // Exécuter la requête SQL pour mettre à jour le titre du film
            String requete = "UPDATE nom_de_votre_table SET titre = ? WHERE id_film = ?";
            PreparedStatement preparedStatement = connexion.prepareStatement(requete);
            preparedStatement.setString(1, nouveauTitre);
            preparedStatement.setInt(2, Integer.parseInt(idFilm));
            int lignesModifiees = preparedStatement.executeUpdate();
</p>

<h2>Exercice 4 : La valeur maximum</h2>
<p>Créer un formulaire pour saisir un nouveau film dans la base de données</p>
<p>// Récupérer les valeurs saisies depuis le formulaire
        String titre = request.getParameter("titre");
        String realisateur = request.getParameter("realisateur");
        int anneeSortie = Integer.parseInt(request.getParameter("anneeSortie"));
if (titre != null && realisateur != null && !titre.isEmpty() && !realisateur.isEmpty()) 
            // Exécuter la requête SQL pour ajouter un nouveau film
            String requete = "INSERT INTO nom_de_votre_table (titre, realisateur, annee_sortie) VALUES (?, ?, ?)";
            PreparedStatement preparedStatement = connexion.prepareStatement(requete);
            preparedStatement.setString(1, titre);
            preparedStatement.setString(2, realisateur);
            preparedStatement.setInt(3, anneeSortie);
            int lignesAjoutees = preparedStatement.executeUpdate();
</p>
<form method="post" action="">
    <label for="titre">Titre :</label>
    <input type="text" name="titre" id="titre" required />

    <label for="realisateur">Réalisateur :</label>
    <input type="text" name="realisateur" id="realisateur" required />

    <label for="anneeSortie">Année de sortie :</label>
    <input type="number" name="anneeSortie" id="anneeSortie" required />

    <input type="submit" value="Ajouter le film" />
</form>

</body>
</html>
