# Cloud-Native-Monitoring

### STEP 1 : CREATING A PYTHON FILE ###

1. Open cmd and install the following things. Make sure you have python and pip installed.
   *   pip install flask
   *   pip install psutil
2. The psutil framework is used to fetch details about the CPU Usage or Memory Usage etc of the host computer.
3. Create a requirements.txt file with all the requirements and run the command to install all of them into the system
   *   pip install -r requirements.txt
5. Once done, create a python file and copy the code.
6. The code creates two variables and fetches the value of cpu usage and memory usage using the psutil built-in functions
7. If the values are more than 80 (independently), then a warning message is shown
8. The render template is used to generate output from a template file based on the Jinja2 engine that is found in the application's templates folder

### STEP 2 : CREATING AN HTML FILE ###

1. Create a folder called *templates*
2. Inside the folder, create an html file
3. Copy the code inside the html file. Ignore the errors/warnings.
4. The code uses a JS Script called Plotly.js which helps to visualize the readings of cpu_usage and mem_usage in terms of gauges, graphs or plots.
5. Inside the JS Script, make sure to keep the same *value* name assigned to the *render_template* in the python file. Just keep the same, if you dont undrstand.
