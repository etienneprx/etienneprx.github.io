# Comment mettre à jour votre CV sur le site

## Méthode simple (recommandée)

### 1. Télécharger les PDFs depuis Overleaf

**CV Français :**
1. Ouvrez : https://fr.overleaf.com/read/hprfjmpzgdxj#9648ce
2. Cliquez sur le bouton "Menu" en haut à gauche
3. Cliquez sur "Download" > "PDF"
4. Sauvegardez le fichier comme `cv_fr.pdf` dans le dossier `cv/`

**CV Anglais :**
1. Ouvrez : https://fr.overleaf.com/read/qwzmvwvcypbs#916a78
2. Cliquez sur le bouton "Menu" en haut à gauche
3. Cliquez sur "Download" > "PDF"
4. Sauvegardez le fichier comme `cv_en.pdf` dans le dossier `cv/`

### 2. Commiter et pousser les changements

```bash
cd /chemin/vers/etienneprx.github.io
git add cv/cv_fr.pdf cv/cv_en.pdf
git commit -m "Update CV"
git push
```

Le site sera automatiquement mis à jour sur www.etienneproulx.org

## Script de téléchargement rapide

Pour télécharger les deux CVs rapidement, vous pouvez utiliser ce script :

```bash
#!/bin/bash
cd "$(dirname "$0")"

echo "📥 Téléchargement des CVs depuis Overleaf..."
echo ""
echo "🇫🇷 CV Français:"
echo "   Ouvrez : https://fr.overleaf.com/read/hprfjmpzgdxj#9648ce"
echo "   Menu > Download > PDF"
echo "   Sauvegardez comme: $(pwd)/cv_fr.pdf"
echo ""
echo "🇬🇧 CV Anglais:"
echo "   Ouvrez : https://fr.overleaf.com/read/qwzmvwvcypbs#916a78"
echo "   Menu > Download > PDF"
echo "   Sauvegardez comme: $(pwd)/cv_en.pdf"
echo ""
read -p "Appuyez sur Entrée une fois les deux PDFs téléchargés..."

# Vérifier si les fichiers existent
if [ -f "cv_fr.pdf" ] && [ -f "cv_en.pdf" ]; then
    echo "✓ Les deux CVs sont présents"
    ls -lh cv_*.pdf
    echo ""
    echo "Pour déployer sur le site :"
    echo "  git add cv_fr.pdf cv_en.pdf"
    echo "  git commit -m 'Update CV'"
    echo "  git push"
else
    echo "✗ Un ou plusieurs CVs manquants"
    [ ! -f "cv_fr.pdf" ] && echo "  Manquant: cv_fr.pdf"
    [ ! -f "cv_en.pdf" ] && echo "  Manquant: cv_en.pdf"
fi
```

Sauvegardez ce script comme `update_cv.sh` dans le dossier `cv/` et exécutez-le avec :
```bash
chmod +x cv/update_cv.sh
./cv/update_cv.sh
```

## Fréquence de mise à jour recommandée

- Après chaque modification significative de votre CV sur Overleaf
- Au minimum une fois par mois si vous ajoutez régulièrement du contenu
- Avant de postuler à des programmes ou positions importantes

## Alternative : Hébergement direct sur Overleaf (non recommandé)

Les iframes Overleaf ne fonctionnent pas à cause des restrictions CORS. C'est pourquoi nous hébergeons les PDFs localement dans le repo.
