#!/usr/bin/python3
""" Starts a Flask web app and fetches data from storage engine """
from flask import Flask, render_template
from models import storage
from models.state import State


app = Flask(__name__)


@app.teardown_appcontext
def close_session(cls):
    """ Closes Session """
    storage.close()


@app.route('/cities_by_states', strict_slashes=False)
def states_list():
    """ Lists states from storage engine """
    states = list(storage.all(State).values())
    return render_template('8-cities_by_states.html', states=states)


if __name__ == '__main__':
    storage.reload()
    app.run("0.0.0.0", 5000)
