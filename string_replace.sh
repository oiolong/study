

sed -i -ne '/<!-- BEGIN realm -->/ {p; r realm.xml' -e ':a; n; /<!-- END realm -->/ {p; b}; ba}; p' server.xml

