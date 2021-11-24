FROM python:alpine as build

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt && \
    pip install pyinstaller && \
    apk add binutils

RUN pyinstaller -F main.py

FROM alpine

WORKDIR /app

COPY --from=build /app/dist/main /app/main

CMD ["/app/main"]
