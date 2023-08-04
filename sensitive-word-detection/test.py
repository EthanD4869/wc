import requests

url = 'http://172.17.0.2:5002/api/check?input='
content = '电影'

try:
    response = requests.post(url + content)
    print(response.json())
except ValueError as e:
    print('Error parsing JSON:', e)
