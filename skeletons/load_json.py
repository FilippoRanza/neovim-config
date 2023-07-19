#! /usr/bin/python

import glob
import json
import os
import sys


def load_json(file_path):
    with open(file_path) as file:
        data = json.load(file)
    return data

def load_all_json(dir_path):
    glob_expr = os.path.join(dir_path, "*.json")
    all_files = glob.glob(glob_expr)
    tmp = map(load_json, all_files)
    return list(tmp)


def main():
    pass


if __name__ == "__main__":
    main()

