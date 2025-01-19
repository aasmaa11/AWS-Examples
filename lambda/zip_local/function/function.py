import json

def handler(event, context):
    message = 'Hello {} {}!'.format(event['fist_name'], event['last_name'])
    info = {
        "Type": "Zip Inline",
        "Version": 1
    }
    info_json = json.dump(info)
    print(info_json)
    return{
        'message': message
    }