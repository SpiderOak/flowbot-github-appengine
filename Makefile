build:
	# Building locally...
	docker build -t flowbot_github .

run:
	# Running locally...
	docker run flowbot_github

deploy:
	# Deploy to Google App Engine
	gcloud app deploy