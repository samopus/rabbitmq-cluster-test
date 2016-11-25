Gathered some stuff from net to test RabbitMQ clustering and recovering mode

Docker stuff copied and edited from https://hub.docker.com/r/grandmore/rabbitmq-cluster/

Node stuff https://www.rabbitmq.com/tutorials/tutorial-one-javascript.html

Quick instructions:
 - install node and npm
 - npm install amqplib
 - install docker and docker-compose
 - start dockerized rabbits
   - cd docker && docker-compose up -d
 - connect to management consoles 
   - http://localhost:15672
   - http://localhost:15673
   - http://localhost:15674
 - (edit send.js and/or receive.js to connect different nodes)
   - ports:
   - 5672
	 - 5673
	 - 5674
 - docker stop docker_rabbit1_1 to stop first rabbit
   - docker_rabbit2_1 for second
	 - docker_rabbit3_1 for third
 - use docker start NAME to restart node
