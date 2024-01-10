<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les tableaux</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les tableaux</h1>
<form action="#" method="post">
    <p>Saisir au minimu 3 chiffres à la suite, exemple : 6 78 15 <input type="text" id="inputValeur" name="chaine">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String chaine = request.getParameter("chaine"); %>
    
    <% if (chaine != null)  %>

    <%-- Division de la chaîne de chiffres séparés par des espaces --%>
    <% String[] tableauDeChiffres = chaine.split("\\s+"); %>
    <p>La tableau contient <%= tableauDeChiffres.length %> valeurs</br>
    Chiffre 1 : <%= Integer.parseInt(tableauDeChiffres[0]) %></br>
    Chiffre 2 : <%= Integer.parseInt(tableauDeChiffres[1]) %></br>
    Chiffre 3 : <%= Integer.parseInt(tableauDeChiffres[2]) %></p>
    
<h2>Exercice 1 : La carré de la première valeur</h2>
<p>Ecrire un programme afin d'afficher le carré de la première valeur</p>
<p>
    // Supposons que vous ayez un tableau de valeurs
    int[] tableau = {5, 10, 15, 20};

    // Vérifiez d'abord si le tableau a au moins une valeur
    if (tableau.length > 0) 
        // La première valeur du tableau
        int premiereValeur = tableau[0];

        // Calculer le carré de la première valeur
        int carreDePremiereValeur = premiereValeur * premiereValeur;

        // Afficher le résultat
</P>
        <p>Le carré de la première valeur du tableau est : carreDePremiereValeur</p>
<p>
    else 
</p>
        <p>Le tableau est vide.</p>


<h2>Exercice 2 : La somme des 2 premières valeurs</h2>
<p>Ecrire un programme afin d'afficher la somme des deux premières valeurs</p>
<p>
    // Déclaration et initialisation du tableau
    int[] tableau = {5, 10, 15, 20, 25};

    // Calcul de la somme des deux premières valeurs
    int somme = tableau[0] + tableau[1];
</p>
<p>Les deux premières valeurs du tableau sont :  tableau[0]  et  tableau[1] </p>
<p>La somme de ces deux valeurs est : somme</p>

<h2>Exercice 3 : La somme de toutes les valeurs</h2>
<p>L'utilisateur peut à présent saisir autant de valeurs qu'il le souhaite dans champs de saisie.</br>
Ecrire un programme afin de faire la somme de toutes les valeurs saisie par l'utilisateur</p>
<p>
    // Récupération des valeurs saisies par l'utilisateur
    String[] valeurs = request.getParameterValues("valeur");

    // Initialisation de la somme
    int somme = 0;

    // Vérification si des valeurs ont été saisies
    if (valeurs != null) {
        // Parcourir le tableau de valeurs et calculer la somme
        for (String valeur : valeurs) {
            try {
                somme += Integer.parseInt(valeur);
            } catch (NumberFormatException e) {
                // Gérer les erreurs de conversion (si l'utilisateur entre des données non numériques)
                out.println("<p>Erreur de saisie : " + valeur + " n'est pas un nombre valide.</p>");
            }
        }
    }
</p>

<h2>Somme des valeurs saisies</h2>
<form method="post" action="">
    <p>Entrez les valeurs séparées par des virgules :</p>
    <input type="text" name="valeur" />
    <input type="submit" value="Ajouter" />
</form>

<p>-- Afficher la somme si des valeurs ont été saisies --</p>
<p> if (valeurs != null)  </p>
    <p>Les valeurs saisies sont : String.join(", ", valeurs)</p>
    <p>La somme de ces valeurs est : somme</p>



<h2>Exercice 4 : La valeur maximum</h2>
<p>Ecrire un programme pour afficher la valeur maximale saisie par l'utilisateur</p>

<p>
    // Récupération des valeurs saisies par l'utilisateur
    String[] valeurs = request.getParameterValues("valeur");

    // Initialisation de la valeur maximale
    int valeurMax = Integer.MIN_VALUE; // Initialisé à la plus petite valeur possible

    // Vérification si des valeurs ont été saisies
    if (valeurs != null) {
        // Parcourir le tableau de valeurs et trouver la valeur maximale
        for (String valeur : valeurs) {
            try {
                int valeurInt = Integer.parseInt(valeur);
                if (valeurInt > valeurMax) {
                    valeurMax = valeurInt;
                }
            } catch (NumberFormatException e) {
                // Gérer les erreurs de conversion (si l'utilisateur entre des données non numériques)
                out.println("<p>Erreur de saisie : " + valeur + " n'est pas un nombre valide.</p>");
            }
        }
    }
</p>

<h2>Valeur maximale d'un tableau</h2>
<form method="post" action="">
    <p>Entrez les valeurs séparées par des virgules :</p>
    <input type="text" name="valeur" />
    <input type="submit" value="Trouver la valeur maximale" />
</form>

<p>-- Afficher la valeur maximale si des valeurs ont été saisies --</p>
<p> if (valeurs != null)  </p>
    <p>Les valeurs saisies sont : String.join(", ", valeurs)</p>
    <p>La valeur maximale est : (valeurMax != Integer.MIN_VALUE) ? valeurMax : "Aucune valeur valide saisie"</p>


<h2>Exercice 5 : La valeur minimale</h2>
<p>Ecrire un programme pour afficher la valeur minimale saisie par l'utilisateur</p>

<p>
    // Récupération des valeurs saisies par l'utilisateur
    String[] valeurs = request.getParameterValues("valeur");

    // Initialisation de la valeur minimale
    int valeurMin = Integer.MAX_VALUE; // Initialisé à la plus grande valeur possible

    // Vérification si des valeurs ont été saisies
    if (valeurs != null) {
        // Parcourir le tableau de valeurs et trouver la valeur minimale
        for (String valeur : valeurs) {
            try {
                int valeurInt = Integer.parseInt(valeur);
                if (valeurInt < valeurMin) {
                    valeurMin = valeurInt;
                }
            } catch (NumberFormatException e) {
                // Gérer les erreurs de conversion (si l'utilisateur entre des données non numériques)
                out.println("<p>Erreur de saisie : " + valeur + " n'est pas un nombre valide.</p>");
            }
        }
    }
</p>

<h2>Valeur minimale d'un tableau</h2>
<form method="post" action="">
    <p>Entrez les valeurs séparées par des virgules :</p>
    <input type="text" name="valeur" />
    <input type="submit" value="Trouver la valeur minimale" />
</form>

<p>-- Afficher la valeur minimale si des valeurs ont été saisies --</p>
<p> if (valeurs != null)  </p>
    <p>Les valeurs saisies sont :  String.join(", ", valeurs) </p>
    <p>La valeur minimale est :  (valeurMin != Integer.MAX_VALUE) ? valeurMin : "Aucune valeur valide saisie" </p>


<h2>Exercice 6 : La valeur le plus proche de 0</h2>
<p>Trouvez la valeur la plus proche de 0 (chiffres positifs ou négatifs)</p>
<p>
    // Récupération des valeurs saisies par l'utilisateur
    String[] valeurs = request.getParameterValues("valeur");

    // Initialisation de la valeur la plus proche de 0
    int valeurProcheDeZero = 0; // Initialisé à 0 par défaut

    // Vérification si des valeurs ont été saisies
    if (valeurs != null) {
        // Parcourir le tableau de valeurs et trouver la valeur la plus proche de 0
        for (String valeur : valeurs) {
            try {
                int valeurInt = Integer.parseInt(valeur);
                // Comparer avec la valeur actuelle la plus proche de 0
                if (Math.abs(valeurInt) < Math.abs(valeurProcheDeZero)) {
                    valeurProcheDeZero = valeurInt;
                }
            } catch (NumberFormatException e) {
                // Gérer les erreurs de conversion (si l'utilisateur entre des données non numériques)
                out.println("<p>Erreur de saisie : " + valeur + " n'est pas un nombre valide.</p>");
            }
        }
    }
</p>

<h2>Valeur la plus proche de 0 dans un tableau</h2>
<form method="post" action="">
    <p>Entrez les valeurs séparées par des virgules :</p>
    <input type="text" name="valeur" />
    <input type="submit" value="Trouver la valeur la plus proche de 0" />
</form>

<p>-- Afficher la valeur la plus proche de 0 si des valeurs ont été saisies --</p>
<p> if (valeurs != null)  </p>
    <p>Les valeurs saisies sont :  String.join(", ", valeurs) </p>
    <p>La valeur la plus proche de 0 est :  valeurProcheDeZero </p>


<h2>Exercice 7 : La valeur le plus proche de 0 (2° version)</h2>

<p>
    // Récupération des valeurs saisies par l'utilisateur
    String[] valeurs = request.getParameterValues("valeur");

    // Initialisation de la valeur la plus proche de 0
    int valeurProcheDeZero = 0; // Initialisé à 0 par défaut

    // Vérification si des valeurs ont été saisies
    if (valeurs != null) {
        // Parcourir le tableau de valeurs et trouver la valeur la plus proche de 0
        for (String valeur : valeurs) {
            try {
                int valeurInt = Integer.parseInt(valeur);
                // Comparer avec la valeur actuelle la plus proche de 0
                int diffActuelle = Math.abs(valeurInt) - Math.abs(valeurProcheDeZero);
                // En cas d'égalité entre un chiffre positif et négatif, afficher le chiffre positif
                if (diffActuelle <= 0 || (valeurInt > 0 && valeurProcheDeZero < 0)) {
                    valeurProcheDeZero = valeurInt;
                }
            } catch (NumberFormatException e) {
                // Gérer les erreurs de conversion (si l'utilisateur entre des données non numériques)
                out.println("<p>Erreur de saisie : " + valeur + " n'est pas un nombre valide.</p>");
            }
        }
    }
</p>

<h2>Valeur la plus proche de 0 dans un tableau</h2>
<form method="post" action="">
    <p>Entrez les valeurs séparées par des virgules :</p>
    <input type="text" name="valeur" />
    <input type="submit" value="Trouver la valeur la plus proche de 0" />
</form>

<p>-- Afficher la valeur la plus proche de 0 si des valeurs ont été saisies --</p>
<p> if (valeurs != null)  </p>
    <p>Les valeurs saisies sont : String.join(", ", valeurs) </p>
    <p>La valeur la plus proche de 0 est :  valeurProcheDeZero </p>


<p>Trouvez la valeur la plus proche de 0 (chiffres positifs ou négatifs)</p>
<p>En cas d'égalité entre un chiffre positif et négatif, affichez le chiffre positif</p>


<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
