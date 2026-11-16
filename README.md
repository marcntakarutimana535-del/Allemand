# Allemand 0 → B2

Application d'apprentissage de l'allemand : **Cours** (249 fiches), **Dictionnaire** (86 chapitres), **Verbes** (1 255 verbes conjugués aux six temps, guide de conjugaison en 10 fiches repliables et une fiche explicative pour chacune des 8 familles de verbes) et **Technique de conjugaison** (guide de 75 chapitres A0 → B2 + 5 annexes), avec cartes de révision, quiz, recherche, audio et suivi de progression.

## Obtenir l'APK depuis GitHub

1. Envoyer ce dossier sur GitHub (branche `main`) — le script `setup-allemand.sh` le fait depuis Termux.
2. Ouvrir l'onglet **Actions** du dépôt, puis l'exécution **Build APK** (3 à 6 minutes).
3. En bas de la page de l'exécution, section **Artifacts** : télécharger **Allemand-0-B2-APK** (un zip).
4. Décompresser le zip, ouvrir `Allemand-0-B2.apk` sur le téléphone et autoriser l'installation depuis cette source.

Une copie de l'APK est aussi publiée dans l'onglet **Releases**.


## Nouveautés (v3.2) : 4ᵉ rubrique « Technique de conjugaison allemande »

Le *Guide complet de conjugaison allemande* (75 chapitres, A0 → B2) est intégré comme quatrième rubrique de l'accueil (bouton **Conjugaison**) :

- 77 fiches en 11 catégories : présentation, 9 parties du guide (chapitres 1 à 75) et fiche mémo des formes à apprendre ;
- chaque chapitre : objectif, leçon pas à pas, exemples allemands traduits (touchez 🔊 pour écouter), pièges, exercice et correction ;
- 154 cartes de révision et 308 questions de quiz tirées des exemples ;
- recherche, plan, progression, historique et sauvegarde prennent en compte la nouvelle rubrique.

## Nouveautés (v3.1) : fiches explicatives par famille de verbes

Chaque famille de verbes a maintenant sa fiche, en haut de la liste (Verbes > choisir un groupe), avec la même structure :

1. **En bref** : définition, carte d’identité (prétérit, participe II, auxiliaire…) et comment reconnaître la famille.
2. **Conjuguer pas à pas** : formule temps par temps, modèle complet aux six temps (touchez une forme pour l’écouter) et verbes à comparer.
3. **Exemples à écouter** : phrases avec traduction.
4. **Pièges et erreurs fréquentes**.
5. **À retenir**.

Familles : Auxiliaires, Faibles, Forts (avec les grandes familles de voyelles), Mixtes, Modaux, Séparables, Inséparables, Pronominaux.
Le **Guide de conjugaison** commence par « Quelle est la famille de mon verbe ? » (questions dans l’ordre, avec accès direct à chaque fiche), et chaque fiche de verbe a un bouton « Comprendre cette famille ».

## Nouveautés (v3)

- **Touche retour** : revient à l'écran précédent, à la position exacte (chaque onglet garde sa propre pile). À la réouverture, l'application reprend l'écran, la position et la série de cartes/quiz en cours (réglable).
- **Historique** (Progrès > Historique) : leçons lues/terminées, quiz, cartes, verbes, exercices, examens.
- **Plan d'étude de 4 mois** (onglet Plan) : 17 semaines, jour par jour, recalage automatique en cas de retard.
- **Révision espacée** : cartes Encore / Difficile / Bien / Facile avec intervalles affichés, phrase d'exemple au verso.
- **Mots difficiles** (étoile ☆ sur les cartes, le dictionnaire et les tableaux) + cartes et quiz dédiés.
- **Genres en couleur** (der / die / das).
- **Entraînement des verbes** (saisie au clavier), **dictée**, **prononciation** (enregistrement, ou reconnaissance vocale si disponible).
- **Test de niveau** (A1 à B2) et **examens blancs B1 / B2** avec chronomètre.
- **Rappel quotidien** (notification locale, APK uniquement) : Réglages > Rappel quotidien.

Le workflow ajoute les autorisations Android nécessaires (notifications, micro) et les icônes (dossier `android-res/`).

## Contenu

- `www/` : l'application (HTML, données JSON, icônes)
- `www/data/c108.json` à `c118.json` : guide de conjugaison (4ᵉ rubrique)
- `www/data/verbs.json` : les 1 255 verbes (répertoire corrigé, dont les verbes pronominaux « sich … »)
- `.github/workflows/build.yml` : compilation de l'APK avec Capacitor
- `assets/` : icône et écran de démarrage


## Version 3.3.0
- Numérotation visible de chaque grand point : Cours 1–249, Dictionnaire 1–86, Technique 1–75 (+ annexes 76–80), Verbes 1–1255.
- Corrections de conjugaison (auxiliaires, formes fortes, traductions, verbes pronominaux) et de deux phrases du guide.
- Nouvelles annexes : verbes forts/mixtes, verbes + préposition + cas, verbes à datif, sein/haben.
