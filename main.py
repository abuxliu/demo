import json
from flask import Flask, request

app = Flask(__name__)


@app.route('/', methods=['GET'])
def index():
    name = request.args.get('name')
    # msg = 'Welcome, ' + name + '!'
    msg = name
    result = {'major': 'Major', 'location': 'Location', 'message': msg, 'flag': True}
    return json.dumps(result, ensure_ascii=False)


if __name__ == '__main__':
    app.run(port=30443, host='0.0.0.0', debug=False, ssl_context=('lm.abu.pub/lm.abu.pub.pem', 'lm.abu.pub/lm.abu.pub.key'))

