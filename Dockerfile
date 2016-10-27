FROM gcr.io/google_appengine/python

# Download & Install Semaphor
RUN apt-get update
RUN apt-get install curl
RUN apt-get -y install libxss1
RUN curl -o semaphor.deb https://spideroak.com/releases/semaphor/debian
RUN dpkg -i semaphor.deb
RUN apt-get install -f

# Install flowbot-github locally
RUN git clone https://github.com/SpiderOak/flowbot-github.git flowbot-github
RUN cd flowbot-github; pip install -r requirements.txt

# Copy local files over
COPY . flowbot-github/src
WORKDIR flowbot-github/src

RUN ls

EXPOSE 8080

ENTRYPOINT ["python"]
CMD ["app.py"]