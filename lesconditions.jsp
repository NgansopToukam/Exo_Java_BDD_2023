<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>les conditions</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les conditions</h1>
<form action="#" method="post">
    <p>Saisir la valeur 1 : <input type="text" id="inputValeur" name="valeur1">
    <p>Saisir la valeur 2 : <input type="text" id="inputValeur" name="valeur2">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String valeur1 = request.getParameter("valeur1"); %>
    <% String valeur2 = request.getParameter("valeur2"); %>

    <%-- Vérification de la condition entre les deux valeurs --%>
    <% if (valeur1 != null && valeur2 != null) { %>
        <%-- Conversion des valeurs en entiers pour la comparaison --%>
        <% int intValeur1 = Integer.parseInt(valeur1); %>
        <% int intValeur2 = Integer.parseInt(valeur2); %>
        
        <%-- Condition if pour comparer les valeurs --%>
        <% if (intValeur1 > intValeur2) { %>
            <p>Valeur 1 est supérieure à Valeur 2.</p>
        <% } else if (intValeur1 < intValeur2) { %>
            <p>Valeur 1 est inférieure à Valeur 2.</p>
        <% } else { %>
            <p>Valeur 1 est égale à Valeur 2.</p>
        <% } %>
   
    
<h2>Exercice 1 : Comparaison 1</h2>
<p>Ecrire un programme qui demande à l'utilisateur de saisir 3 valeurs (des chiffres),</br>
A, B et C et dites nous si la valeur de C est comprise entre A et B.</br>
Exemple :</br>
A = 10</br>
B = 20</br>
C = 15</br>
Oui C est compris entre A et B</p>

<form method="post" action="">
    <label for="valeurA">A :</label>
    <input type="text" name="valeurA" required/><br/>

    <label for="valeurB">B :</label>
    <input type="text" name="valeurB" required/><br/>

    <label for="valeurC">C :</label>
    <input type="text" name="valeurC" required/><br/>

    <input type="submit" value="Comparer"/>
</form>

<p>
    if (request.getMethod().equals("POST")) {
        // Récupération des valeurs saisies par l'utilisateur
        int valeurA = Integer.parseInt(request.getParameter("valeurA"));
        int valeurB = Integer.parseInt(request.getParameter("valeurB"));
        int valeurC = Integer.parseInt(request.getParameter("valeurC"));

        // Vérification si C est compris entre A et B
        boolean estCompris = (valeurC >= valeurA && valeurC <= valeurB);

        // Affichage du résultat
        out.println("<p>");
        out.println("A = " + valeurA + "<br/>");
        out.println("B = " + valeurB + "<br/>");
        out.println("C = " + valeurC + "<br/>");

        if (estCompris) {
            out.println("Oui, C est compris entre A et B.");
        } else {
            out.println("Non, C n'est pas compris entre A et B.");
        }

        out.println("</p>");
    }
</p>


<h2>Exercice 2 : Pair ou Impair ?</h2>
<form method="post" action="">
    <label for="nombre">Entrez un nombre :</label>
    <input type="text" name="nombre" required/><br/>
    <input type="submit" value="Vérifier"/>
</form>

<p>
    if (request.getMethod().equals("POST")) {
        // Récupération du nombre saisi par l'utilisateur
        int nombre = Integer.parseInt(request.getParameter("nombre"));

        // Vérification si le nombre est pair ou impair
        if (nombre % 2 == 0) {
            out.println("<p>" + nombre + " est un nombre pair.</p>");
        } else {
            out.println("<p>" + nombre + " est un nombre impair.</p>");
        }
    }
</p>
<p>Écrivez un programme pour vérifier si un nombre est pair ou impair en utilisant une structure if</p>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
