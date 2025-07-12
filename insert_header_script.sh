#!/data/data/com.termux/files/usr/bin/bash

HEADER_CODE='<div id="header-placeholder"></div>
<script>
  fetch("header.html")
    .then(response => response.text())
    .then(data => {
      document.getElementById("header-placeholder").innerHTML = data;
    });
</script>'

for file in ~/mannesdelices/*.html; do
  if ! grep -q "header-placeholder" "$file"; then
    echo "🔧 Ajout du header dans $file"
    sed -i "/<body>/a $HEADER_CODE" "$file"
  else
    echo "✅ $file contient déjà le header."
  fi
done
