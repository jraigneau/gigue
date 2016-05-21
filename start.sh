#!/bin/bash
docker run -v=/home/superman/dev/domi-gigue/dashboards:/dashboards -v=/home/superman/dev/domi-gigue/config:/config -v=/home/superman/dev/domi-gigue/widgets:/widgets -v=/home/superman/dev/domi-gigue/assets:/assets -e GEMS="sinatra_cyclist" --name gigue -d -p 8080:3030 frvi/dashing
