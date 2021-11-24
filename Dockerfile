FROM python:alpine as build

WORKDIR /app

COPY . .

RUN pip install pyinstaller -y && \
    pyinstaller -F main.py

FROM alpine

WORKDIR /app

COPY --from=build /app/main /app/main

CMD ["/app/main"]
