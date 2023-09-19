#The base image is Python:3.9-buster from Dockerhub
FROM python:3.9-buster

#Setting the working directory in the container
WORKDIR /app

#copy the file requirements.txt into the dockerfile
COPY requirements.txt .

#Run the command to install all the dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

#Copy everything else into the dockerfile
COPY . .

#Setting the environment variable for the flask app
ENV FLASK_RUN_HOST=0.0.0.0

#Expose port 5000 to run the app
EXPOSE 5000

#Start the flask app when the container runs
CMD ["flask", "run"]

