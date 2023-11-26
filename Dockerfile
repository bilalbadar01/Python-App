FROM python:3.10.13-alpine

WORKDIR /app

COPY requirements.txt .
RUN pip install -r 'requirements.txt'

EXPOSE 8080

COPY . ./

CMD [ "python", "./app.py" ]