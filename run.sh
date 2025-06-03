#!/bin/bash
cd `dirname $0`

docker run -d \
    --publish=7474:7474 --publish=7687:7687 \
    --volume=$PWD/volumes/neo4j/data:/data \
    --name neo4j \
    neo4j:4.4.26