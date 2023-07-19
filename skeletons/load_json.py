#! /usr/bin/python

from dataclasses import dataclass
import glob
import json
import os
import sys


@dataclass
class JsonData:
    name: str
    path: str
    data: dict


def load_json(file_path):
    with open(file_path) as file:
        data = json.load(file)
        name = os.path.basename(file_path)
    return JsonData(name, file_path, data)


def load_all_json(dir_path):
    glob_expr = os.path.join(dir_path, "*.json")
    all_files = glob.glob(glob_expr)
    tmp = map(load_json, all_files)
    return list(tmp)


def main():
    all_json_data = load_all_json(sys.argv[1])


if __name__ == "__main__":
    main()
