all: run
run:
	uvx --from 'ansible-core>2.19' ansible-playbook -K -i localhost, playbook.yml --extra-vars home=$(HOME)
