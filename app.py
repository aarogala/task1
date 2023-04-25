#!/usr/bin/env python
# coding: utf-8

import os
import pandas as pd
import sqlite3

from bottle import Bottle, route, run, template, get, post, debug, static_file, request, redirect, response

app = Bottle()

@app.route('/static/<path:path>', name='static')
def static(path):
    return static_file(path, root='./static')

@app.route('/')
@app.route('/', method = 'POST')
def glowna():
    return template('index')

app.run(host = '0.0.0.0', port = 8888, debug = True)

