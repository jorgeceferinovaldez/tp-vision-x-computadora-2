install:
	@( \
		if [ ! -d .venv ]; then python3 -m venv --copies .venv; fi; \
		. .venv/bin/activate; \
		pip install -qU pip; \
		pip install -r requirements.txt; \
	)

# Limpia el proyecto (elimina el entorno virtual)
clean:
	@echo "Limpiando el proyecto..."
	@rm -rf .venv
