all: run
run:
	uv run ansible-playbook \
	  --connection local \
	  --ask-become-pass \
	  --inventory localhost, \
	  --extra-vars home=$(HOME) -v \
	  playbook.yml
