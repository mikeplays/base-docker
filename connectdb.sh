#!/bin/bash

docker exec -u www-data -it app mysql -u root -p -h db project
