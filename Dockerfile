# Container image that runs your code
FROM python:3.8-slim

RUN pip install --no-cache-dir pylint pylint_django pycodestyle flake8 black mypy isort

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY . .

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
