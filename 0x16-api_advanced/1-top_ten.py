#!/usr/bin/python3
"""
Function that queries the Reddit API and prints the titles of the
first 10 hot posts listed for a given subreddit.
"""

import requests


def top_ten(subreddit):
    url = 'https://www.reddit.com/r/'+subreddit+'/hot.json'
    json = requests.get(url, headers={'user-agent': 'Mozilla/5.0'}).json()
    
    if json['data']['children'] == []:
        print('None')
        return

    children = json['data']['children']
    i = 0

    for child in children:
        if (i < 10):
            print(child['data']['title'])
        else:
            return
        i += 1
