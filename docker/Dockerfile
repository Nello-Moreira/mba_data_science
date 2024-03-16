FROM python:3.12.1-bookworm
WORKDIR /app
COPY requirements.txt /app
RUN pip install -r /app/requirements.txt
ENV JUPYTER_PORT=8888
COPY . .
CMD jupyter lab --ip=0.0.0.0 --allow-root --no-browser --IdentityProvider.token='1234'