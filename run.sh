#!/bin/bash
cd `dirname $0`

docker run -d \
    --publish=7474:7474 --publish=7687:7687 \
    --volume=$PWD/volumes/neo4j/data:/data \
    --name neo4j \
    -e NEO4J_PLUGINS='["apoc"]' \
    -e NEO4J_dbms_security_procedures_unrestricted=apoc.* \
    -e NEO4J_dbms_security_procedures_whitelist=apoc.* \
    neo4j:4.4.26