app_name = simple_library

debug:
	docker attach $(app_name)

inspect:
	bundle exec rubocop -D

matrix:
	echo -ne "\033]0;In $(app_name) container\007" && docker exec -it $(app_name) bash

console:
	echo -ne "\033]0;$(app_name) console\007" && rails console

run:
	echo -ne "\033]0;Running $(app_name)...\007" && docker-compose up
