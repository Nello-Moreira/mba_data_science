FROM python:3.12.1-bookworm
RUN apt-get update
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
ENV JUPYTER_PORT=8888
COPY . .
CMD jupyter lab --ip=0.0.0.0 --allow-root --no-browser --IdentityProvider.token='1234'