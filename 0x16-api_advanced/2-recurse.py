#!/usr/bin/python3
"""
Recursive function that queries the Reddit API and returns a list containing
the titles of all hot articles for a given subreddit
"""

import requests


def recurse(subreddit, hot_list=[], after=''):
    url = 'https://www.reddit.com/r/'+subreddit+'/hot.json?after='+after
    json = requests.get(url, headers={'user-agent': 'Mozilla/5.0'}).json()

    if 'error' in json or json['data']['children'] == []:
        return None

    children = json['data']['children']
    for child in children:
        hot_list.append(child['data']['title'])
    after = json['data']['after']
    if after is None:
        return hot_list
    else:
        return recurse(subreddit, hot_list, after)
