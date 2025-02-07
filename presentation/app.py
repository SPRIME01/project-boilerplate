from fastapi import FastAPI

app = FastAPI(title="Project Boilerplate API")


@app.get("/")
async def root():
    return {"message": "Hello, world!"}
