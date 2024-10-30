from flask import Flask, jsonify
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

@app.route('/get_data', methods=['GET'])
def get_data():
    response = jsonify({
        'radar': [100, 90, 80, 70, 60],
        'pie': {'yes': 10, 'no': 90},
        'line': [5, 25, 100, 75]
    })
    response.headers.add('Access-Control_Allow_Origin', '*')
    return response

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5001, debug=True)
