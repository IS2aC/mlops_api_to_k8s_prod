from fastapi import FastAPI

app = FastAPI(title="Simple FastAPI App")

@app.get("/")
def read_root():
    return {"message": "Bienvenue sur mon API FastAPI !"}

@app.get("/hello/{name}")
def say_hello(name: str):
    return {"message": f"Salut {name}, bienvenue dans ton API !"}

@app.post("/sum")
def calculate_sum(numbers: dict):
    a = numbers.get("a", 0)
    b = numbers.get("b", 0)
    return {"result": a + b}
