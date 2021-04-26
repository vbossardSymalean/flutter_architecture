Projets suivant les concepts de la Clean Architecture de Robert C. Martin.

Diviser le projet en fonctionnalités.

Chacune contient des repertoires permettant une parfaite sépration des responsabilités.

PRESENTATION => Contient la vue et le controlleur de l'architecure. C'est ici que se trouve le state management (BLoC / Provider / GetX ...).
Contient : /pages, /pages, /controller

DOMAIN => Contient la logique métier de l'application. Cette couche doit etre parfaitement indépendante des autres couches.

Contient :

/usecases => La logique métier de l'application.
Ils communiquent avec les controlleurs et les entités.

/entities => Les classe métier de l'application.
Elles communiquent avec le repositories.

/repositories => Contient des classe abstraites, déclarant des contrats permettant de lié la couche Domain et la couche Data.

DATA => C'est la couche d'accès aux données.
Elle est indépendante de la couche Domain.

Contient :

/repositories => Le cerveau de la couche Data.
On retrouve les implémentations des repositories de la couche Domain. Ils retournent des erreurs si nécessaire et les convertissent en Failure. C'est aussi ici que l'on décide si la donnée proviens du cache ou de l'API. Pour decider on vérifie si une connexion existe via la class du core/platform dédié au réseau.

/models => Classe héritant des entités de la couche Domain. Ici on peux lié avec une librairie de Pertistance commme Hive ou SQLFlite...

/datasources => Classe chargés de gérés la communication avec la source de données.

Le projet suis la méthode du TDD, Test Driven Development. Dans cette méthode de travail il convient de créer les tests avant d'implémenter le code source.

Il est nécessaire d'écrire des tests avant le code pour ce qui concerne la "Logique" de l'application.

Ce processus ce déroule en trois étape :

1 - Red Phase : Ecrire un test en utilisant des composants qui ne sont pas encore crées.

2 - Green Phase : Implémenter le code source afin que les tests liés soient au vert.

3 - Refactor : Améliorer le code crée tout en gardant le test en vert.

Il faut démarrer le développement de a fonctionnalités par la couche la plus à l'interieur, la couche Domain.

Dans le tuto :

D'abord la définition de l'entité, puis le repositorie pour récupérer les données. Puis le usecase.

/fixtures => contient des données de tests representant l'API afin de pouvoir tester meme si l'API n'est pas disponible.
Il contient aussi un filereader.

CORE

/network =>

/platform/network_info.dart =>


// Reprendre vidéo 10