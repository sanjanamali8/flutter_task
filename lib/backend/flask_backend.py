from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/get_data', methods=['GET'])
def get_data():
    data = {
        'radar': [100, 90, 80, 70, 60],
        'pie': {'yes': 10, 'no': 90},
        'line': [5, 25, 100, 75]
    }
    return jsonify(data)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5001, debug=True)
