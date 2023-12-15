.build:
	rm -f *.html *.js *.css *.zip
	cd vs && npm install && vite build
	mv vs/dist/assets/* ./
	mv vs/dist/index.html ./
	rm -r vs/dist/assets
	sed -i -e 's/\/assets\///g' ./index.html
	rm -r ./index.html-e
	zip index.html imsmanifest.xml *.css *.js
	rm -f *.html *.js *.css

