import json
from faker import Faker


def handler(event, context):
    fake = Faker()
    message = 'Hello {}!'.format(fake,name())
    info = {
        "Type": "Container example",
        "Version": 1
    }
    info_json = json.dump(info)
    print(info_json)
    return{
        'message': message
    }