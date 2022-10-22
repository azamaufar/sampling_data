#!/usr/bin/python3

import numpy as np
import pandas as pd

data=pd.read_csv("merged.csv", error_bad_lines=False)
print(data)
