#!/data/data/com.termux/files/usr/bin/bash
# Prépare et pousse l'appli "Allemand 0 → B2" sur GitHub.
# GitHub compile ensuite l'APK : onglet Actions > exécution > Artifacts (zip), ou onglet Releases.
# Usage : bash setup-allemand.sh [chemin/du/fichier.zip]
set -e

GH_USER="marcntakarutimana535-del"
GH_EMAIL="marcntakarutimana535@gmail.com"
REPO="AllemandB2"
PRIVE="true"            # mettre "false" pour un dépôt public
DIR="$HOME/allemand"

echo "== 1/6 Outils =="
pkg install -y git curl unzip >/dev/null

echo "== 2/6 Fichier ZIP =="
ZIP="$1"
if [ -z "$ZIP" ]; then
  [ -d "$HOME/storage/downloads" ] || termux-setup-storage
  sleep 2
  ZIP=$(ls -t "$HOME"/storage/downloads/*allemand*B2*.zip 2>/dev/null | head -n1)
fi
if [ -z "$ZIP" ] || [ ! -f "$ZIP" ]; then
  echo "ZIP introuvable. Relance avec : bash setup-allemand.sh /chemin/du/zip"; exit 1
fi
echo "ZIP : $ZIP"

echo "== 3/6 Création du projet dans $DIR =="
rm -rf "$DIR"; mkdir -p "$DIR"
unzip -q -o "$ZIP" -d "$DIR"
cd "$DIR"
[ -f capacitor.config.json ] && [ -f .github/workflows/build.yml ] || { echo "Ce ZIP n'est pas le projet complet (capacitor.config.json ou build.yml manquant)."; exit 1; }
chmod +x setup-allemand.sh 2>/dev/null || true

echo "== 4/6 Jeton GitHub =="
echo "Colle ton jeton (rien ne s'affiche, c'est normal), puis Entrée :"
read -r -s TOKEN
echo
[ -n "$TOKEN" ] || { echo "Jeton vide."; exit 1; }

echo "== 5/6 Création du dépôt $GH_USER/$REPO =="
CODE=$(curl -s -o /tmp/gh_resp.json -w "%{http_code}" \
  -H "Authorization: Bearer $TOKEN" -H "Accept: application/vnd.github+json" \
  https://api.github.com/user/repos \
  -d "{\"name\":\"$REPO\",\"private\":$PRIVE}")
if [ "$CODE" = "201" ]; then echo "Dépôt créé."
elif [ "$CODE" = "422" ]; then echo "Le dépôt existe déjà : on le réutilise."
else echo "Erreur GitHub ($CODE) :"; cat /tmp/gh_resp.json; exit 1; fi

echo "== 6/6 Envoi du code =="
git init -q -b main
git config user.name "$GH_USER"
git config user.email "$GH_EMAIL"
git add -A
git commit -q -m "Allemand 0-B2 : application + build APK"
git push -f "https://$GH_USER:$TOKEN@github.com/$GH_USER/$REPO.git" main

echo
echo "TERMINÉ. Suis la compilation ici (3 à 6 min) :"
echo "https://github.com/$GH_USER/$REPO/actions"
echo "APK final : Actions > exécution > Artifacts, ou Releases :"
echo "https://github.com/$GH_USER/$REPO/releases"
