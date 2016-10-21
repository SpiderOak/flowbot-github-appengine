install:
	rm -rf flowbot-github
	git clone git@github.com:SpiderOak/flowbot-github.git
	cp settings.json flowbot-github/src/settings.json

	# You may want to change this photo
	cp github.jpg flowbot-github/src/github.jpg

	# Remove this when flowbot_barebones becomes public, this just installs the
	# boilerplate bot alongside the github bot so that it can be imported as if
	# it were installed.
	git clone git@github.com:SpiderOak/flowbot-barebones.git
	mv flowbot-barebones/src flowbot-github/src/flowbot
	rm -rf flowbot-barebones

local_build:
	docker build -t flowbot_github .

run:
	docker run flowbot_github

deploy:
	gcloud app deploy