from fastapi import FastAPI
from pydantic import BaseModel
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

app=FastAPI()

DATABASE_URL="postgresql://postgres:Password%40123@localhost:5432/Music-app"

engine=create_engine(DATABASE_URL)
SessionLocal=sessionmaker(autocommit=False,autoflush=False,bind=engine)

db=SessionLocal()

class UserCreate(BaseModel):
    name:str
    email:str
    password:str

@app.post('/signup')
def signup_user(user:UserCreate):
    #extract thre data from the request
    print(user.name)
    print(user.email)
    print(user.password)

    #check if the user already exist in db
    #add the user to the db
    
    pass