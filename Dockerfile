FROM python:alpine3.7
COPY . /app
WORKDIR /app
RUN pip freeze > requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT [ "python" ]
CMD [ "web.py" ]