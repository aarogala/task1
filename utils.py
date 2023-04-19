#!/usr/bin/env python
# coding: utf-8

import pandas as pd

def read_data(store):
    data = pd.read_csv(f'walmart_{store}.csv', index_col=0)
    return data

