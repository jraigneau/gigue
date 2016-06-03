#!/bin/bash
path=`pwd`
docker run -v=$path/dashboards:/dashboards -v=$path/config:/config -v=$path/widgets:/widgets -v=$path/assets:/assets -v=$path/jobs:/jobs -e GEMS="sinatra_cyclist" --name gigue -d -p 8080:3030 frvi/dashing
