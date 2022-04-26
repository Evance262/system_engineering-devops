#!/usr/bin/python3
"""
Queries the Reddit API
"""
import json
import requests


def top_ten(subreddit):
    """
    prints the titles of the first 10 hot posts
    """
    user = {"User-Agent": "RasberyyCalm762"}
    request = requests.get("https://www.reddit.com/r/{}/hot/.json?limit=10"
                           .format(subreddit), headers=user)

    if request.status_code == 200:
        for post in request.json().get("data").get("subscribers"):
            print(post.get("data").get("title"))
        else:
            print("None")
