
# Create a superuser for the django admin panel
createsuperuser:
	docker exec platoform_django python manage.py createsuperuser --no-input

# Run django pytest and generate coverage
djangotest:
	docker exec platoform_django sh -c 'cd /app/backend && rm -f .coverage && PYTHONPATH=/app/backend/src:$$PYTHONPATH pytest test --cov=src/apps --cov-report=term-missing --cov-report=html:htmlcov --cov-config=.coveragerc || true'

# Pull ollama model
pullollamamodel:
	docker exec platform_ollama ollama pull qwen3:1.7b

# Scan the backend with sonarqube
run_sonarqube:
	docker run --rm \
	--network platoform_platoform_net \
	-v "$$(pwd)/services/backend:/usr/src" \
	-e SONAR_HOST_URL=http://sonarqube:9000 \
	-e SONAR_TOKEN=sqp_16f09d9840dada2baf637d74b32e40f953ffe523 \
	sonarsource/sonar-scanner-cli

# pip-audit
run_pip_audit:
	docker exec platoform_django sh -c 'ls -la && pip-audit -r ./requirements/development.txt'