#!/usr/bin/env python
# coding: utf-8

import pandas as pd

def data_header(store_number, dept_number):
    return f'Showing data from store {store_number} and department {dept_number}'

def read_data(store):
    data = pd.read_csv(f'walmart_{store}.csv', index_col=0)
    return data

def subset_data(data, cols):
    valid_cols = list(set(data.columns.tolist()) & set(cols))
    return data[valid_cols]

