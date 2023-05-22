fmt:
	terraform fmt .

doc:
	terraform-docs markdown table --sort-by required . > README.md
