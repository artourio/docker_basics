FROM python:3.10.12

WORKDIR /usr/src/app

COPY ./python/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ./python/app.py .

CMD [ "python", "./app.py" ]
