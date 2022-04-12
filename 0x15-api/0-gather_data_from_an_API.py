#!/usr/bin/python3
"""
RESTful API to get data
"""
import requests
import sys


if __name__ == __main__:
    # api endpoint
    api_url = "https://jsonplaceholder.typicode.com/"

    # getting user fron the api
    users = requests.get("https://jsonplaceholder.typicode.com/user/{}"
                         .format(sys.argv[1])).json()

    todos = requests.get("https://jsonplaceholder.typicode.com/todos?userId={}"
                         .format(sys.argv[1])).json()

    finished_tasks = [task.get("title") for task in todos if
                      task.get("completed") is True]

    print("Employee {} is done with tasks({}/{}):".format(
        users.get("name"), len(finished_tasks), len(todos)))

    [print("\t {}".format(finished)) for finished in finished_tasks]
