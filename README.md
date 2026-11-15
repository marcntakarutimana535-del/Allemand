# Allemand 0 → B2

Application d'apprentissage de l'allemand : **Cours** (249 fiches), **Dictionnaire** (86 chapitres) et **Verbes** (1 192 verbes conjugués aux six temps, guide de conjugaison en 10 fiches repliables), avec cartes de révision, quiz, recherche, audio et suivi de progression.

## Obtenir l'APK depuis GitHub

1. Envoyer ce dossier sur GitHub (branche `main`) — le script `setup-allemand.sh` le fait depuis Termux.
2. Ouvrir l'onglet **Actions** du dépôt, puis l'exécution **Build APK** (3 à 6 minutes).
3. En bas de la page de l'exécution, section **Artifacts** : télécharger **Allemand-0-B2-APK** (un zip).
4. Décompresser le zip, ouvrir `Allemand-0-B2.apk` sur le téléphone et autoriser l'installation depuis cette source.

Une copie de l'APK est aussi publiée dans l'onglet **Releases**.


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
- `www/data/verbs.json` : les 1 192 verbes extraits du « Grand répertoire des verbes allemands »
- `.github/workflows/build.yml` : compilation de l'APK avec Capacitor
- `assets/` : icône et écran de démarrage
