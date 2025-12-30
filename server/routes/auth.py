from main import app
import uuid
import bcrypt
from fastapi import HTTPException
from database import db
from spotify.server.models.user import User
from spotify.server.pydantic_schemas.user_create import UserCreate


@app.post('/signup')
def signup_user(user:UserCreate):
    #extract thre data from the request
    print(user.name)
    print(user.email)
    print(user.password)

    #check if the user already exist in db
    user_db=db.query(User).filter(User.email==user.email).first()

    if  user_db:
        raise HTTPException(400,"User with same email exist")

    
    hashed_pw=bcrypt.hashpw(user.password.encode(),bcrypt.gensalt())
    user_db=User(id=str(uuid.uuid4()),email=user.email,password=hashed_pw,name=user.name)

    #add the user to the db
    db.add(user_db)
    db.commit()
    db.refresh(user_db)

    return user_db