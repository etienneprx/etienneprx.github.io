# 📥 Comment ajouter vos CVs au site

## Étape 1 : Télécharger les CVs depuis Overleaf

### CV Français :
1. Ouvrez ce lien dans votre navigateur : https://fr.overleaf.com/read/hprfjmpzgdxj#9648ce
2. Cliquez sur le bouton **"Menu"** (☰) en haut à gauche
3. Cliquez sur **"Download"** puis **"PDF"**
4. Sauvegardez le fichier dans le dossier `cv/` avec le nom **`cv_fr.pdf`**

### CV Anglais :
1. Ouvrez ce lien dans votre navigateur : https://fr.overleaf.com/read/qwzmvwvcypbs#916a78
2. Cliquez sur le bouton **"Menu"** (☰) en haut à gauche
3. Cliquez sur **"Download"** puis **"PDF"**
4. Sauvegardez le fichier dans le dossier `cv/` avec le nom **`cv_en.pdf`**

## Étape 2 : Vérifier les fichiers

Dans votre terminal :
```bash
ls -lh cv/cv_*.pdf
```

Vous devriez voir :
```
cv/cv_en.pdf
cv/cv_fr.pdf
```

## Étape 3 : Déployer sur le site

```bash
git add cv/cv_fr.pdf cv/cv_en.pdf
git commit -m "Add CV PDFs"
git push
```

Le site www.etienneproulx.org sera automatiquement mis à jour !

## Mise à jour future des CVs

Quand vous modifiez vos CVs sur Overleaf :
1. Re-téléchargez les nouveaux PDFs (même processus)
2. Remplacez les fichiers dans `cv/`
3. Commit et push :
   ```bash
   git add cv/*.pdf
   git commit -m "Update CV"
   git push
   ```

## Script automatisé (optionnel)

Vous pouvez aussi utiliser le script fourni :
```bash
./cv/update_cv.sh
```

Ce script ouvrira automatiquement les liens Overleaf dans votre navigateur.
