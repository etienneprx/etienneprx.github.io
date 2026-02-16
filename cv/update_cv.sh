#!/bin/bash
# Script pour faciliter la mise à jour des CVs

cd "$(dirname "$0")"

echo "📥 Mise à jour des CVs depuis Overleaf"
echo "======================================"
echo ""
echo "Instructions :"
echo "1. Les liens Overleaf vont s'ouvrir dans votre navigateur"
echo "2. Sur chaque page, cliquez sur Menu > Download > PDF"
echo "3. Sauvegardez les fichiers dans ce dossier avec les noms indiqués"
echo ""
read -p "Appuyez sur Entrée pour continuer..."

# Ouvrir les liens Overleaf
echo ""
echo "🇫🇷 Ouverture du CV français..."
xdg-open "https://fr.overleaf.com/read/hprfjmpzgdxj#9648ce" 2>/dev/null || open "https://fr.overleaf.com/read/hprfjmpzgdxj#9648ce" 2>/dev/null || echo "Ouvrez manuellement : https://fr.overleaf.com/read/hprfjmpzgdxj#9648ce"
echo "   → Sauvegardez comme: $(pwd)/cv_fr.pdf"
sleep 2

echo ""
echo "🇬🇧 Ouverture du CV anglais..."
xdg-open "https://fr.overleaf.com/read/qwzmvwvcypbs#916a78" 2>/dev/null || open "https://fr.overleaf.com/read/qwzmvwvcypbs#916a78" 2>/dev/null || echo "Ouvrez manuellement : https://fr.overleaf.com/read/qwzmvwvcypbs#916a78"
echo "   → Sauvegardez comme: $(pwd)/cv_en.pdf"

echo ""
echo "======================================"
read -p "Appuyez sur Entrée une fois les deux PDFs téléchargés et sauvegardés..."

# Vérifier si les fichiers existent
echo ""
if [ -f "cv_fr.pdf" ] && [ -f "cv_en.pdf" ]; then
    echo "✅ Les deux CVs sont présents !"
    echo ""
    ls -lh cv_*.pdf
    echo ""
    echo "📤 Pour déployer sur le site www.etienneproulx.org :"
    echo ""
    echo "  cd .."
    echo "  git add cv/cv_fr.pdf cv/cv_en.pdf"
    echo "  git commit -m 'Update CV'"
    echo "  git push"
    echo ""
else
    echo "⚠️  Un ou plusieurs CVs manquants :"
    echo ""
    [ ! -f "cv_fr.pdf" ] && echo "  ✗ cv_fr.pdf"
    [ ! -f "cv_en.pdf" ] && echo "  ✗ cv_en.pdf"
    echo ""
    echo "Assurez-vous de sauvegarder les PDFs avec les noms exacts dans ce dossier."
fi
