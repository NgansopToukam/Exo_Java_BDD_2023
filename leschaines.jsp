<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les chaines</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les chaines de charactères</h1>
<form action="#" method="post">
    <p>Saisir une chaine (Du texte avec 6 caractères minimum) : <input type="text" id="inputValeur" name="chaine">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String chaine = request.getParameter("chaine"); %>
    
    <% if (chaine != null) { %>

    <%-- Obtention de la longueur de la chaîne --%>
    <% int longueurChaine = chaine.length(); %>
    <p>La longueur de votre chaîne est de <%= longueurChaine %> caractères</p>

    <%-- Extraction du 3° caractère dans votre chaine --%>
    <% char caractereExtrait = chaine.charAt(2); %>
    <p>Le 3° caractère de votre chaine est la lettre <%= caractereExtrait %></p>

    <%-- Obtention d'une sous-chaîne --%>
    <% String sousChaine = chaine.substring(2, 6); %>
    <p>Une sous chaine de votre texte : <%= sousChaine %></p>

    <%-- Recharche de la lettre "e" --%>
    <% char recherche = 'e'; 
       int position = chaine.indexOf(recherche); %>
    <p>Votre premier "e" est en : <%= position %></p>

    
<h2>Exercice 1 : Combien de 'e' dans notre chaine de charactère ?</h2>
<p>Ecrire un programme pour compter le nombre de lettre e dans votre chaine de charactères</p>
<form method="post" action="">
    <label for="chaine">Entrez une chaîne de caractères :</label>
    <input type="text" name="chaine" required/><br/>
    <input type="submit" value="Compter"/>
</form>

<p>
    if (request.getMethod().equals("POST")) {
        // Récupération de la chaîne saisie par l'utilisateur
        String chaine = request.getParameter("chaine");

        // Comptage du nombre de 'e' dans la chaîne
        int compteur = 0;
        for (int i = 0; i < chaine.length(); i++) {
            if (chaine.charAt(i) == 'e' || chaine.charAt(i) == 'E') {
                compteur++;
            }
        }

        out.println("<p>Le nombre de 'e' dans la chaîne est : " + compteur + "</p>");
    }
</p>

<h2>Exercice 2 : Affichage verticale</h2>
<p>Ecrire le programme pour afficher le texte en vertical</br>
Exemple : Bonjour</br>
B</br>
o</br>
n</br>
j</br>
o</br>
u</br>
r</p>
<form method="post" action="">
    <label for="texte">Entrez un texte :</label>
    <input type="text" name="texte" required/><br/>
    <input type="submit" value="Afficher"/>
</form>

<p>
    if (request.getMethod().equals("POST")) {
        // Récupération du texte saisi par l'utilisateur
        String texte = request.getParameter("texte");

        // Affichage du texte en vertical
        for (int i = 0; i < texte.length(); i++) {
            out.println(texte.charAt(i) + "<br/>");
        }
    }
</p>


<h2>Exercice 3 : Retour à la ligne</h2>
<p>La présence d'un espace provoque un retour à la ligne </br>
Exemple : L'hiver sera pluvieux</br>
L'hiver</br>
sera</br>
pluvieux</p>
<p>
    String texte = "L'hiver sera pluvieux";
    String[] mots = texte.split(" ");

    for (String mot : mots) {
        out.println(mot + "<br/>");
    }
</p>

<h2>Exercice 4 : Afficher une lettre sur deux</h2>
<p>Ecrire le programme pour afficher seulement une lettre sur deux de votre texte </br>
Exemple : L'hiver sera pluvieux</br>
Lhvrsr lvex</p>
<p>
    String texte = "L'hiver sera pluvieux";
    for (int i = 0; i < texte.length(); i += 2) {
        out.print(texte.charAt(i));
    }
</p>

<h2>Exercice 5 : La phrase en verlant</h2>
<p>Ecrire le programme afin d'afficher le texte en verlant </br>
Exemple : L'hiver sera pluvieux</br>
xueivulp ares revih'l</p>
<p>
    String texte = "L'hiver sera pluvieux";
    String[] mots = texte.split(" ");
    for (String mot : mots) {
        for (int i = mot.length() - 1; i >= 0; i--) {
            out.print(mot.charAt(i));
        }
        out.print(" ");
    }
</p>

<h2>Exercice 6 : Consonnes et voyelles</h2>
<p>
    String texte = "L'hiver sera pluvieux";
    int nbConsonnes = 0;
    int nbVoyelles = 0;
    texte = texte.toLowerCase(); // Convertir le texte en minuscules pour simplifier la comparaison

    for (int i = 0; i < texte.length(); i++) {
        char caractere = texte.charAt(i);
        if (Character.isLetter(caractere)) {
            if (caractere == 'a' || caractere == 'e' || caractere == 'i' || caractere == 'o' || caractere == 'u') {
                nbVoyelles++;
            } else {
                nbConsonnes++;
            }
        }
    }
</p>

<p>Nombre de consonnes : <%= nbConsonnes %></p>
<p>Nombre de voyelles : <%= nbVoyelles %></p>

<p>Ecrire le programme afin de compter les consonnes et les voyelles dans votre texte</p>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
