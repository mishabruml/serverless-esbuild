test-e2e-minimal:
	rm -fr ./e2e-minimal && mkdir ./e2e-minimal && rsync -r ./examples/minimal/ ./e2e-minimal/
	cd ./e2e-minimal && ls && npm i && npx sls package
	cd ./e2e-minimal && ls -a && cd .serverless && unzip minimal-example.zip
	npx jest -c jest.config.e2e.js --ci
	rm -fr ./e2e-minimal