build:
	rm -rf lib/sharp
	docker run --rm --volume ${PWD}:/build amazonlinux:nodejs /bin/bash -c "source ~/.bashrc; npm install sharp; mv node_modules/sharp lib/"
	docker run --rm --volume ${PWD}:/build amazonlinux:nodejs /bin/bash -c "source ~/.bashrc; npm run create-package"

image:
	docker build --tag amazonlinux:nodejs .
