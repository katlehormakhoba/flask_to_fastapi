import os
from flask import Flask
app = Flask(__name__)


name : str = os.environ.get('my_name')
@app.route("/")
def main():
    return "Welcome katleho!"

@app.route('/howAreYouToday')
def hello():
    return 'I am good, how about you?'

@app.route("/career")
def career():
    return "Aspiring full stack developer."

@app.route("/details")
def details():
    return "coming soon."

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
