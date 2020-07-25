# Thanks for https://github.com/nobaa36/CS50-s-Web---project-1/blob/master/helpers.py
from functools import wraps
from flask import redirect, session


def login_required(f):
    @wraps(f)
    def decorated_function(*args, **kwargs):
        if session.get("username") is None:
            return redirect("/login")
        return f(*args, **kwargs)
    return decorated_function
