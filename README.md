# Allemand 0 → B2

Application web (PWA, hors ligne) pour apprendre l'allemand en français : **Cours** (249 fiches), **Dictionnaire** thématique (86 chapitres) et **Verbes** (673 verbes conjugués à tous les temps).

## Rubrique Verbes
- Guide « Technique de conjugaison » (présent, prétérit, participes, séparables, réfléchis, impératif, Konjunktiv II).
- Fiche par verbe : Präsens, Präteritum, Perfekt, Plusquamperfekt, Futur I/II, Konjunktiv II, Imperativ, participes, exemples du cours, audio, favoris.
- Filtres (à connaître, faibles, forts, mixtes, modaux, séparables, réfléchis, sein), index A–Z, recherche, verbe du jour, entraînement.
- Données : `data/verbs.json` (extraites du cours et du dictionnaire). Les formes sont calculées par un moteur de conjugaison intégré à `index.html`.

## Structure
`index.html` (application) · `data/` (cours, dictionnaire, verbes) · `sw.js` (hors ligne) · `manifest.json` · icônes.

## Déploiement sur GitHub Pages
1. Créer un dépôt GitHub et y envoyer tout le contenu de ce dossier (à la racine).
2. Dépôt → Settings → Pages → Source : **GitHub Actions** (le workflow `.github/workflows/pages.yml` publie la branche `main`).
3. L'application est servie sur `https://<utilisateur>.github.io/<depot>/`. Tous les chemins sont relatifs : aucune autre configuration.

Après une mise à jour des fichiers, incrémenter la version du cache dans `sw.js` (`const C='de0b2-v9'`).
`.well-known/assetlinks.json` concerne l'ancienne application Android (Netlify) : à adapter si le domaine change.
