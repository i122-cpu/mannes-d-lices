#!/data/data/com.termux/files/usr/bin/bash

# Contenu HTML à insérer dans <body>
HEADER_HTML='<header class="site-header">
  <div class="header-container">
    <h1 class="logo">MANNES & DÉLICES</h1>
    <nav class="nav">
      <ul class="nav-links">
        <li><a href="index.html">Accueil</a></li>
        <li><a href="recettes.html">Recettes</a></li>
        <li><a href="cours.html">Cours</a></li>
        <li><a href="contact.html">Contact</a></li>
        <li><a href="apropos.html">À propos</a></li>
      </ul>
      <div class="burger" onclick="toggleMenu()">
        <div class="bar"></div>
        <div class="bar"></div>
        <div class="bar"></div>
      </div>
    </nav>
  </div>
</header>'

# JS à ajouter avant </body>
FOOTER_SCRIPT='<script>
  function toggleMenu() {
    const navLinks = document.querySelector(".nav-links");
    navLinks.classList.toggle("show");
  }
</script>'

# Pour chaque fichier HTML
for file in ~/mannesdelices/*.html ~/mannesdelices/images/*.html; do
  # Vérifie que le fichier existe
  [ -f "$file" ] || continue

  # Injecte le header juste après <body>
  sed -i "/<body>/a $HEADER_HTML" "$file"

  # Injecte le JS juste avant </body>
  sed -i "/<\/body>/i $FOOTER_SCRIPT" "$file"
done

echo "✅ Menu burger injecté dans tous les fichiers HTML."
