# Cloud-Native-Monitoring

### STEP 1 : CREATING A PYTHON FILE ###

1. Open cmd and install the following things. Make sure you have python and pip installed.
   *   pip install flask    
    
   *   pip install psutil    
   
3. The psutil framework is used to fetch details about the CPU Usage or Memory Usage etc of the host computer.
4. Create a requirements.txt file with all the requirements and run the command to install all of them into the system
   *   pip install -r requirements.txt
    
5. Once done, create a python file and copy the code.
6. The code creates two variables and fetches the value of cpu usage and memory usage using the psutil built-in functions
7. If the values are more than 80 (independently), then a warning message is shown
8. The render template is used to generate output from a template file based on the Jinja2 engine that is found in the application's templates folder

----------------------------------------------------------------------------------------------------------------------------------------------

### STEP 2 : CREATING AN HTML FILE ###

1. Create a folder called *templates*
2. Inside the folder, create an html file
3. Copy the code inside the html file. Ignore the errors/warnings.
4. The code uses a JS Script called Plotly.js which helps to visualize the readings of cpu_usage and mem_usage in terms of gauges, graphs or plots.
5. Inside the JS Script, make sure to keep the same *value* name assigned to the *render_template* in the python file. Just keep the same, if you dont undrstand.

----------------------------------------------------------------------------------------------------------------------------------------------

### STEP 3 : RUN ON LOCALHOST ###

1. Open terminal (VSCODE) and run the follwing command to start the server on localhost. Once started, click on the URL to open the server.
   *  python _name_.py
   In my case, it is app.py
2. You can see the readings and the visualization using a gauge reader on the screen. You can also refresh to see the changing cpu and memory usage.

----------------------------------------------------------------------------------------------------------------------------------------------

### STEP 4 : DOCKERFILE ###

1. Once the server is run on localhost, the next aim would be to use docker to create an image from the code and make a container.
2. For that, create a *Dockerfile* and copy the code.
3. The base image is Python:3.9.18-slim-bullseye from Dockerhub.
4. Then we set the working directory in the container
5. Then we copy the file requirements.txt into the dockerfile
6. Then we run the command to install all the dependencies
7. Then we copy everything else into the dockerfile
8. Then we set the environment variable for the flask app
9. Expose port 5000 to run the app
10. Start the flask app when the container runs

11. Once the code is copied, the following command is run to create a docker image -
    *  docker build -t _nameofapplication_ .
      
12. Once the image is created, we run the follwing command to create the container out of it using the unique id/name
    *  docker run -p 5000:5000 _uniqueid_

----------------------------------------------------------------------------------------------------------------------------------------------

