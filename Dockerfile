FROM python:3.9-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

ENV PORT 8000

CMD ["sh", "-c", "slack-export-viewer -z ./Swarthmore_Ultimate_Slack_export_Oct_1_2017_-_Jul_1_2024.zip --ip 0.0.0.0 --port $PORT"]
