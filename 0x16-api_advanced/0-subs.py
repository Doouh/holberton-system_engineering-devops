#!/usr/bin/python3
"""
Function that queries the Reddit API and returns the number of subscribers
(not active users, total subscribers) for a given subreddit.
"""

import requests


def number_of_subscribers(subreddit):
    url = 'https://www.reddit.com/r/'+subreddit+'.json'
    json = requests.get(url, headers={'user-agent': 'Mozilla/5.0'}).json()

    if 'error' in json and json['error'] == 404:
        return 0

    if json['data']['children'][0]['data']['subreddit_subscribers']:
        return json['data']['children'][0]['data']['subreddit_subscribers']
    else:
        return 0
