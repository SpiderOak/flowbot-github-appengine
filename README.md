This demonstrates installing the [flowbot-github](https://github.com/SpiderOak/flowbot-github) Semaphor bot in a docker container running on the Google Cloud.
You need to provide a `settings.json` file to have the bot work correctly.

# Installing and Deploy.
You first need to make sure that you have the google cloud SDK developed locally. 

- Create a `settings.json` file with your bot's configuration; see [this example file](https://github.com/SpiderOak/flowbot-github/blob/master/src/settings.json.example) for help.
- `make install`
- `make deploy`

# Configure GitHub
Once you have your bot running on Google App Engine (see above) you need to point your GitHub repository's webhooks to the bot. Assuming your bot is running at `yourbot.appengine.com` Add this webhook to your GitHub repo:
- `http://yourbot.appengine.com/postreceive`