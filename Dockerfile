FROM python:3.12.1-slim-bookworm

ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=8000

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

CMD ["flask", "run"]
