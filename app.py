import os
from flask import Flask
app = Flask(__name__)


name : str = os.environ.get('my_name')
@app.route("/")
def main():
    return "Welcome kat!"

@app.route('/how are you today')
def hello():
    return 'I am good, how about you?'

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
