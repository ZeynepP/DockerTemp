
#!/bin/bash

# copying config file
cp ../configs/config_bye.json ../config.json

docker run -d -v ./code_example:/usr/src/temp/ -ti  --rm  --gpus all --name temp-bye temp-docker-tf2:0.0.2

# to get docker logs
docker  logs -f  temp-bye  &> bye.log &