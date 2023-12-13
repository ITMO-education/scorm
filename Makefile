.build:
	cd vs && npm install && vite build
	cp vs/dist ./dist
