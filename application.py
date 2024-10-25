from flask import Flask

app = Flask(__name__)

@app.route('/')
def name():
    return "Name: Ayush , Roll No: 2333"
