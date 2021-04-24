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
On retrouve les implémentations des repositories de la couche Domain.

/models => Classe héritant des entités de la couche Domain. Ici on peux lié avec une librairie de Pertistance commme Hive ou SQLFlite...

/datasources => Classe chargés de gérés la communication avec la source de données.
