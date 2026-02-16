# Instructions pour mettre à jour le CV sur le site

## Liens Overleaf actuels

- **CV français** : https://fr.overleaf.com/read/hprfjmpzgdxj#9648ce
- **CV anglais** : https://fr.overleaf.com/read/qwzmvwvcypbs#916a78

## Comment mettre à jour les liens CV

Si vous modifiez votre projet Overleaf ou si vous souhaitez utiliser un nouveau lien de partage, vous devez mettre à jour les liens dans les deux fichiers HTML :

### 1. Version française (index.html)

Ouvrez `index.html` et recherchez la section `<!-- CV -->`. Remplacez l'URL dans :
- L'attribut `src` de l'`<iframe>`
- L'attribut `href` du bouton de téléchargement

```html
<iframe src="NOUVEAU_LIEN_CV_FRANCAIS" ...></iframe>
...
<a href="NOUVEAU_LIEN_CV_FRANCAIS" ...>Télécharger le CV (PDF)</a>
```

### 2. Version anglaise (index_en.html)

Ouvrez `index_en.html` et faites la même modification pour le CV anglais :

```html
<iframe src="NOUVEAU_LIEN_CV_ANGLAIS" ...></iframe>
...
<a href="NOUVEAU_LIEN_CV_ANGLAIS" ...>Download CV (PDF)</a>
```

## Comment obtenir un lien de partage public Overleaf

1. Ouvrez votre projet CV sur Overleaf
2. Cliquez sur le bouton "Share" (Partager) en haut à droite
3. Dans l'onglet "Link Sharing", activez "Turn on link sharing"
4. Copiez le lien généré (format : `https://fr.overleaf.com/read/[project-id]#[hash]`)
5. Assurez-vous que le partage est en mode "View Only" (lecture seule)

## Remarques importantes

- Le lien doit être un lien de **partage public en lecture seule**
- Le hash après le `#` dans l'URL change chaque fois que vous compilez le PDF
- Si votre CV ne s'affiche pas correctement, vérifiez que le projet Overleaf est bien compilé et que le partage est activé
- Les deux CV (français et anglais) peuvent provenir de projets Overleaf différents ou du même projet avec des fichiers différents

## Alternative : Héberger le PDF localement

Si vous préférez héberger le PDF directement sur le site plutôt que d'utiliser Overleaf :

1. Téléchargez votre CV depuis Overleaf (format PDF)
2. Placez-le dans le dossier `cv/` avec les noms `cv_fr.pdf` et `cv_en.pdf`
3. Modifiez les fichiers HTML pour pointer vers ces fichiers locaux :
   ```html
   <iframe src="cv/cv_fr.pdf" ...></iframe>
   <a href="cv/cv_fr.pdf" download>Télécharger le CV (PDF)</a>
   ```

Cette approche est plus simple mais nécessite de mettre à jour manuellement le PDF à chaque modification.
