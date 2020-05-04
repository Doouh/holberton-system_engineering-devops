#!/usr/bin/python3
"""
Script to export data in the JSON format.
"""

import json
import requests
from sys import argv

if __name__ == '__main__':
    url = 'https://jsonplaceholder.typicode.com/users/' + argv[1]
    username = requests.get(url).json()['username']
    url = 'https://jsonplaceholder.typicode.com/todos?userId=' + argv[1]
    tasks = requests.get(url).json()
    dic = {}
    ls = []
    for task in tasks:
        dic['task'] = task['title']
        dic['completed'] = task['completed']
        dic['username'] = username
        ls.append(dic)
    with open(argv[1]+'.json', 'w') as f:
        json.dump({argv[1]: ls}, f)
