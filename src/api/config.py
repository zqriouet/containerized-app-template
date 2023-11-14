import os

# configuration used to connect to MariaDB

config = {
    'host': os.environ.get('DB_HOST', 'db-container'),
    'port': os.environ.get('DB_PORT', 3306),
    'user': os.environ.get('DB_USER', 'root'),
    'password': os.environ.get('MYSQL_ROOT_PASSWORD', 'mypassword'),
    'database': os.environ.get('MYSQL_DATABASE', 'mydb')
}
