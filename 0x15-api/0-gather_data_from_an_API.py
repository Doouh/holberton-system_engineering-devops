#!/usr/bin/python3
"""
Script that, using this REST API, for a given employee ID, returns
information about his/her TODO list progress.
"""

import requests
from sys import argv

if __name__ == '__main__':
    url = 'https://jsonplaceholder.typicode.com/users/' + argv[1]
    name = requests.get(url).json()['name']
    url = 'https://jsonplaceholder.typicode.com/todos?userId=' + argv[1]
    tasks = requests.get(url).json()
    tasksCompleted = list(filter(lambda x: x['completed'] is True, tasks))
    print('Employee {} is done with tasks({}/{}):'.format(name,
          len(tasksCompleted), len(tasks)))
    for task in tasksCompleted:
        print('\t {}'.format(task['title']))
