#!/usr/bin/env python
# coding: utf-8

import os
import pandas as pd

from bottle import Bottle, route, run, template, get, post, debug, static_file, request, redirect, response
from utils import subset_data, data_header, read_data

app = Bottle()

@app.route('/static/<path:path>', name='static')
def static(path):
    return static_file(path, root='./static')

@app.route('/')
@app.route('/', method = 'POST')
def glowna():
    store_number = int(request.forms.getunicode('Store', default=1))
    dept_number = int(request.forms.getunicode('Dept', default=1))
    
    cols = []
    
    for field, value in request.forms.allitems():
        if field == 'Vars':
            cols.append(value)
    
    naglowek = data_header(store_number, dept_number)

    tab = read_data(store_number)
    tab = tab.query('Store == @store_number and Dept == @dept_number')
    tab = subset_data(tab, cols)
    
    return template('index', wszystkie_zmienne=["Store","Dept","Date","Temperature","Fuel_Price","CPI","Unemployment","IsHoliday","Weekly_Sales","Name"],
                    wybrane_zmienne=tab.columns.tolist(), dane=tab.values, naglowek=naglowek, departament=dept_number, store=store_number)

app.run(host = '0.0.0.0', port = 8888, debug=True)

