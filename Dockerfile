FROM gcr.io/google_appengine/python

# Download & Install Semaphor
RUN apt-get update
RUN apt-get install curl
RUN apt-get -y install libxss1
RUN curl -o semaphor.deb https://spideroak.com/releases/semaphor/debian
RUN dpkg -i semaphor.deb
RUN apt-get install -f


# Copy code
COPY . /app
WORKDIR /app/flowbot-github

# Install dependencies
RUN pip install -r requirements.txt --upgrade

WORKDIR /app/flowbot-github/src


EXPOSE 8080

ENTRYPOINT ["python"]
CMD ["app.py"]