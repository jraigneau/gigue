#!/bin/bash
docker run -v=/home/superman/dev/domi-gigue/dashboards:/dashboards -v=/home/superman/dev/domi-gigue/config:/config -v=/home/superman/dev/domi-gigue/widgets:/widgets -v=/home/superman/dev/domi-gigue/assets:/assets -v=/home/superman/dev/domi-gigue/jobs:/jobs -e GEMS="sinatra_cyclist json" --name gigue -d -p 8080:3030 frvi/dashing
