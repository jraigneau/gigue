#!/bin/bash
docker run -v=dashboards:/dashboards -v=config:/config -v=widgets:/widgets -v=assets:/assets -v=jobs:/jobs -e GEMS="sinatra_cyclist json" --name gigue -d -p 8080:3030 frvi/dashing
