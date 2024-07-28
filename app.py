import os
from flask import Flask
app = Flask(__name__)


name : str = os.environ.get('MY_NAME')
@app.route("/")
def main():
    return f"Welcome {name}!"

@app.route('/howAreYouToday')
def hello():
    return 'I am good, how about you?'

@app.route("/career")
def career():
    return "Aspiring full stack developer."

@app.route("/details")
def details():
    return "coming soon."

@app.route("/status")
def status():
    return "learning."

@app.route("/next")
def next():
    return "Python Cert."

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
