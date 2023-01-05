FROM python:3.7

COPY ./app /app

WORKDIR /app

RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

EXPOSE 5000

CMD [ "flask", "--app" , "main", "run", "--host=0.0.0.0"]