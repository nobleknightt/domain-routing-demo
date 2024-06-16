from flask import Flask, request

app = Flask(__name__)

@app.route('/')
def main():
    return f'Main Page for {request.host}'
