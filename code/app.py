import os

from flask import Flask, render_template

template_dir = os.path.abspath("build")

app = Flask(__name__, template_folder=template_dir, static_folder="./build/static/")


@app.route("/")
def index():
    return render_template("index.html", name=os.environ.get("NAME"))
