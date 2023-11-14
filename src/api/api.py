import os
import mariadb
from flask import Flask, request, jsonify
# import json
from config import config

app = Flask(__name__)
app.config["DEBUG"] = True

API_HOST = os.environ.get('API_HOST', 'api-container')
API_PORT = os.environ.get('API_PORT', 5000)

# pool = mariadb.ConnectionPool(
#     **config,
#     pool_name="web-app",
#     pool_size=20,
#     pool_validation_interval=250
# )


@app.route('/hello')
def hello():
    return "Hello world !"


def select_(query="select * from mydb.clients;"):
    try:
        conn = mariadb.connect(**config)
        cursor = conn.cursor()
        if query:
            cursor.execute(query)
            columns = [x[0] for x in cursor.description]
            results = cursor.fetchall()
            json_data = [dict(zip(columns, result)) for result in results]
            res = {'results': json_data}
            status_code = 200
        else:
            res = {'error': 'Aucune requete fournie'}
            status_code = 400
    except mariadb.Error as e:
        res = {'error': f'{e}'}
        status_code = 400
    except Exception as e:
        res = {'error': f'{e}'}
        status_code = 400
    finally:
        cursor.close()
        conn.close()
    return res, status_code


@app.route('/select', methods=['GET', 'POST'])
def select():
    if request.method == 'GET':
        query = request.args.get('q')
    elif request.method == 'POST':
        query = request.json.get('q')
    res, status_code = select_(query)
    return jsonify(res), status_code


if __name__ == "__main__":
    app.run(debug=True, host='api-container', port=API_PORT)
