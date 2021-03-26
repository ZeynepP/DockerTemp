# DockerTemp

This is my way of using docker for my python projects. I am a researcher and I need to update my code several times. I would like to just update my 
code and re-run my python code without any docker manipulation so I came up with this
DockerTemp project. 

* docker folder : It contains Dockerfile, docker-compose.yml and requirements.txt to create docker image
and one entry point script : dockertemp.py. dockertemp.py takes a config file as input from mounted volume 
  I called /usr/src/temp/
  ```
  CMD [ "./dockertemp.py", "/usr/src/temp/config.json" ]
  ```
  and this script will launch the script given in config.json
* config file: contains "script", path to python script to run, "params" contains its params 
and logging.ini for the logs.
  
```
{

  "params":  "Everyone",
  "script": "/usr/src/temp/hello.py",
  "logging": "/usr/src/temp/logging.ini"

}
  ```
* code-example : Your code goes there. I provided a sample hello example. You can have different 
configs file to run different code. scripts contain .sh file that runs docker.
  



