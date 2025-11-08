from fastapi import FastAPI
from functions.utils import say_hello


app = FastAPI(title="Simple FastAPI Example", version="1.0.0")


@app.get("/")
def root():
    return {"message": "FastAPI is running!"}


@app.get("/hello/{name}")
def hello(name: str):
    message = say_hello(name)
    return {"message": message}
