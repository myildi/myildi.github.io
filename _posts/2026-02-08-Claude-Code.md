---
layout: post
title: Experimenting with Claude Code
tags: LLMs Claude-Code Programming
---

After playing with Gemini Code, I wanted to test the sheriff in town: **[Claude Code](https://claude.com/product/claude-code)**, and I am very impressed, like everyone else.

If you don't know it, Claude Code is a Pro feature of Claude that lets you create and modify programming projects directly on your computer, without copying and pasting between an IDE and Claude. It can hence create and modify files on your computer, depending on the rights you give it (you can limit it to files in a given folder, for example). 

My test was somewhat unorthodox and on the fringe of Claude Code's targets. 

Indeed, my favorite Website editor on MacOS, RapidWeaver Classic, is being replaced by Realmac, which has chosen to completely overhaul the editor with a more modern infrastructure, and under a new name: Elements. Unfortunately, Elements is not compatible with Rapidweaver and my attempts with the provided import tool have been very unsatisfactory. I do not have time to rewrite my website either; I am not a professional editor, and it is simply meant to disseminate my research and courses.

So, I tried a somewhat unorthodox approach: I exported my RapidWeaver website in a folder, and I asked Claude Code first to analyze my simple website and then propose different approaches for converting it to a simple reactive website. 

## Analyse and proposition by Claude Code of my website

Voici mon analyse complète de votre site RapidWeaver et les options de migration.

---

## Analyse de votre site actuel

### Structure générale
- **34 pages HTML** organisées hiérarchiquement (recherche, enseignement, cours, publications, etc.)
- **Thème MultiXLabel** avec 57 variantes CSS consolidées
- **Plugin Stacks v5.3.2** utilisé sur 21 pages (structure de divs imbriquées `stacks_out_X` / `stacks_in_X`)
- Contenu académique : PDF (20), modèles NetLogo (15), vidéos, archives Java

### Dépendances RapidWeaver propriétaires
 
| Élément | Détail |
|---------|--------|
| Thème MultiXLabel | CSS/JS/images dans `/rw_common/themes/multixlabel/` |
| Plugin Stacks | Classes CSS `stacks_*`, JS par page, structure de divs imbriquée |
| Navigation | Menu hiérarchique multi-niveaux avec toggle mobile |
| CSS consolidés | 57 fichiers CSS spécifiques par page |
| jQuery 1.7.1 | Version très ancienne + plugins (prettyPhoto, tipsy, hoverIntent) |
| 17 polices web embarquées | Dont beaucoup probablement inutilisées |
| Support IE7-9 | Polyfills obsolètes |

### Points positifs pour la migration
- Le contenu est du **HTML statique** (pas de base de données, pas de PHP côté serveur)
- La structure de navigation est claire et récupérable
- Les ressources (PDF, images, NetLogo) sont bien organisées dans `/resources/`
- Le design est relativement simple : header + navigation + contenu principal + footer

---

## Options de migration

### Option 1 : Hugo (recommandée, and chosen by me)
**Générateur de site statique en Go**

- **Avantages** : Très rapide, templates en Go, Markdown pour le contenu, thèmes responsifs modernes, gratuit et open source, hébergeable partout (Netlify, GitHub Pages, etc.)
- **Migration** : Script automatisé pour extraire le contenu HTML de chaque page, convertir en Markdown, générer les templates
- **Effort estimé** : Un script de conversion + ajustements manuels minimes

---

## Stratégie de migration automatisée

(...)

Je peux écrire un **script de conversion automatique** qui extraira le contenu de vos 34 pages HTML, les convertira en Markdown avec les métadonnées (front matter), reconstruira la navigation, et créera la structure de projet Hugo. Vous n'auriez qu'à choisir un thème et ajuster le style.

## Exécution

Hugo n'est pas encore installé. Voulez-vous que je l'installe via Homebrew ?

```bash
brew install hugo
```

En attendant, je peux déjà commencer à écrire le script Python de conversion qui :
1. Parsera vos 34 pages HTML
2. Extraira le contenu principal (en supprimant les éléments RapidWeaver)
3. Convertira en Markdown avec front matter Hugo
4. Reconstruira la structure de navigation
5. Copiera les ressources (PDF, images, etc.)

So, it installed Hugo via Homebrew, set up everything, wrote the script, ran it, and checked the output by navigating through different pages.

## Résumé de ce qui a été fait

**34 pages converties** avec succès, dont 21 pages Stacks nettoyées de leurs wrappers propriétaires.

### Structure du projet Hugo

```
yildizoglu-hugo/
├── hugo.toml              ← Configuration + menu de navigation complet
├── content/               ← 34 pages converties (HTML propre + front matter)
├── static/
│   ├── images/            ← Images extraites des pages
│   └── resources/         ← PDFs, NetLogo, vidéos (copiés tels quels)
├── themes/yildizoglu-theme/
│   ├── layouts/           ← Templates (baseof, single, list, home)
│   ├── static/css/        ← CSS responsive moderne (flexbox, mobile-first)
│   └── static/js/         ← JS minimal (menu toggle, back-to-top)
└── convert_rw.py          ← Script de conversion (réutilisable)
```

### Ce qui a été supprimé (Cleaning the proprietary éléments)
- Toutes les dépendances RapidWeaver (theme MultiXLabel, Stacks, jQuery 1.7)
- Les polyfills IE7-9
- Les 57 fichiers CSS consolidés
- Les divs imbriquées Stacks (`stacks_out_*`, `stacks_in_*`)

It explained how to edit the pages in the future and add new pages.

I checked the created pages on Hugo's local server and noticed a few minor issues. Claude has taken them into account and proposed a new version. It checked the pages and links at each step and adapted the script accordingly. This part of the process was impressively thorough. Of course, **during all these operations, Claude asked my permission before changing anything and explained clearly what it planned to do**.

## Restoring the style of the original website

I asked Claude to try to duplicate the main style elements of the original site. I saw it was trying to decode the CSS files in my RapidWeaver theme, so I stopped it. I asked it to rather open the pages in Chrome, take screenshots and analyse the visual aspects (colours, etc.) to get inspired. It was happy to do it.

## Creating the updating routine

I asked it to explain how I can continue to develop this website, and to propose a way to make the updating of the remote site as automatic as possible. 

It explained and proposed creating another script to automate the generation of modified or new files and their upload (only them) to the server using lftp.

I tested it (before and after executing the lftp part), and it worked very smoothly:

[You can check it here](https://yildizoglu.fr)

## To conclude

My first adventure with Claude code was very impressive and a complete success. I am very happy with the outcome. As with this blog, I am free of any proprietary software for my website, too. I will not have the nice Stacks-based interface of Rapidweaver, but I have not been able to turn my head around Elements anyway. So, I am quite happy with the new system. 

But if you want to upgrade your site from RapidWeaver Classic to Elements, this could be a solution for you, too, for keeping as much of your imported page formatting as possible.