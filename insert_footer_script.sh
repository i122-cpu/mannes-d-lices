#!/data/data/com.termux/files/usr/bin/bash

FOOTER_CODE='<div id="footer-placeholder"></div>
<script>
  fetch("footer.html")
    .then(response => response.text())
    .then(data => {
      document.getElementById("footer-placeholder").innerHTML = data;
    });
</script>'

for file in ~/mannesdelices/*.html; do
  if ! grep -q "footer-placeholder" "$file"; then
    echo "🔧 Ajout du footer dans $file"
    sed -i "/<\/body>/i $FOOTER_CODE" "$file"
  else
    echo "✅ $file contient déjà le footer."
  fi
done
