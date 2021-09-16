FROM alpine

ENV PYTHONUNBUFFERED=1

RUN apk update && apk upgrade && apk add --no-cache python3 py3-pip curl
RUN addgroup -S appuser && adduser -S appuser -G appuser

RUN mkdir /django_backend
WORKDIR /django_backend
COPY * .
RUN chown -R appuser:appuser /django_backend

USER appuser
RUN pip install -r requirements.txt

EXPOSE 8000

RUN python3 manage.py test

CMD ["manage.py", "runserver", "0.0.0.0:8000"]
ENTRYPOINT ["python3"]