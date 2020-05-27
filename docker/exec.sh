#!/bin/bash
FILE=docker_compose/prometheus.docker_compose.yml
function start(){
	docker-compose -f $FILE up -d
}

function stop(){
	docker-compose -f $FILE down
	docker-compose -f $FILE rm -sfv
}

function restart(){
	stop
	start
}

function usage(){
	echo Usage:
	echo "$0 [start | stop | restart]"
}

case $1 in 
	start)
	start
	;;

	stop)
	stop
	;;

	restart)
	stop
	start
	;;

	*)
	usage
	;;

esac
