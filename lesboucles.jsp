<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Boucles</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les boucles</h1>
<form action="#" method="post">
    <label for="inputValeur">Saisir le nombre d'étoiles : </label>
    <input type="text" id="inputValeur" name="valeur">
    <input type="submit" value="Afficher">
</form>

<%-- Récupération de la valeur saisie par l'utilisateur --%>
<% String valeur = request.getParameter("valeur"); %>
    
<%-- Vérification de l'existence de la valeur --%>
<% if (valeur != null && !valeur.isEmpty()) { %>

<%-- Boucle for pour afficher une ligne d'étoiles --%>
    <%int cpt = Integer.parseInt(valeur); %>
    <p>
    <% for (int i = 1; i <= cpt; i++) { %>
       <%= "*" %>
    <% } %>
    </p>

<h2>Exercice 1 : Le carré d'étoiles</h2>
<p>Ecrire le code afin de produire un carré d'étoile</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>*****</br>*****</br>*****</br>*****</br>*****</p>
<p>
    Scanner scanner = new Scanner(System.in);
    out.print("Entrez la taille du carré : ");
    int taille = scanner.nextInt();

    for (int i = 0; i < taille; i++) {
        for (int j = 0; j < taille; j++) {
            out.print("*");
        }
        out.println("<br>");
    }

    scanner.close();
</p>

<p>*****</br>*****</br>*****</br>*****</br>*****</p>

<h2>Exercice 2 : Triangle rectangle gauche</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>

<p>*</br>**</br>***</br>****</br>*****</p>
<p>
    Scanner scanner = new Scanner(System.in);
    out.print("Entrez la taille du triangle : ");
    int taille = scanner.nextInt();

    for (int i = 0; i < taille; i++) {
        for (int j = 0; j <= i; j++) {
            out.print("*");
        }
        out.println("<br>");
    }

    scanner.close();
</p>
<p>*****</br>*****</br>*****</br>*****</br>*****</p>

<h2>Exercice 3 : Triangle rectangle inversé</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>

<p>*****</br>****</br>***</br>**</br>*</p>
<p>
    Scanner scanner = new Scanner(System.in);
    out.print("Entrez la taille du triangle : ");
    int taille = scanner.nextInt();

    for (int i = 0; i < taille; i++) {
        for (int j = taille - i; j > 0; j--) {
            out.print("*");
        }
        out.println("<br>");
    }

    scanner.close();
</p>
<p>*****</br>****</br>***</br>**</br>*</p>

<h2>Exercice 4 : Triangle rectangle 2</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;***</br>&nbsp;&nbsp;****</br>*****</p>
<p>
    Scanner scanner = new Scanner(System.in);
    out.print("Entrez la taille du triangle : ");
    int taille = scanner.nextInt();

    for (int i = 0; i < taille; i++) {
        // Ajoutez des espaces pour aligner à droite
        for (int j = 0; j < taille - i - 1; j++) {
            out.print("&nbsp;&nbsp;");
        }

        // Ajoutez des étoiles pour former le triangle
        for (int k = 0; k <= i; k++) {
            out.print("*");
        }

        out.println("<br>");
    }

    scanner.close();
</p>
<br>

<h2>Exercice 5 : Triangle isocele</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;***</br>&nbsp;****</br>*****</p>
<p>
    int taille = 5; // Vous pouvez changer la taille du triangle

    for (int i = 0; i < taille; i++) {
        // Ajoutez des espaces pour aligner à droite
        for (int j = 0; j < taille - i - 1; j++) {
            out.print("&nbsp;&nbsp;");
        }

        // Ajoutez des étoiles pour former le triangle
        for (int k = 0; k <= i * 2; k++) {
            out.print("*");
        }

        out.println("<br>");
    }
</p>
<br>

<h2>Exercice 6 : Le demi losange</h2>
<p>Ecrire le code afin de produire un losange</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;***</br>&nbsp;&nbsp;****</br>*****</p>
<p>*****</br>&nbsp;&nbsp;****</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</p>
<p>
    int taille = 5; // Vous pouvez changer la taille du demi-losange

    for (int i = 0; i < taille; i++) {
        // Ajoutez des étoiles pour former le demi-losange
        for (int j = 0; j <= i; j++) {
            out.print("*");
        }
        out.println("<br>");
    }

    for (int i = taille - 2; i >= 0; i--) {
        // Ajoutez des étoiles pour former le demi-losange
        for (int j = 0; j <= i; j++) {
            out.print("*");
        }
        out.println("<br>");
    }
</p>
<br>

<h2>Exercice 7 : La table de multiplication</h2>
<p>
    int taille = 10; // Vous pouvez changer la taille de la table de multiplication

    out.println("<table border=\"1\">");
    out.println("<tr><th>*</th>");

    // En-têtes de colonnes
    for (int i = 1; i <= taille; i++) {
        out.println("<th>" + i + "</th>");
    }

    out.println("</tr>");

    // Contenu de la table
    for (int i = 1; i <= taille; i++) {
        out.println("<tr><th>" + i + "</th>");

        for (int j = 1; j <= taille; j++) {
            out.println("<td>" + (i * j) + "</td>");
        }

        out.println("</tr>");
    }

    out.println("</table>");
</p>
<br>
<p>Ecrire le code afin de créer une table de multiplication</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>5 x 1 = 5</p>
<p>5 x 2 = 10</p>
<p>5 x 3 = 15</p>
<p>5 x 4 = 20</p>
<p>5 x 5 = 25</p>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
