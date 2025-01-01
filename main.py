# Import Flask class from flask module
from flask import Flask
import os
app = Flask(__name__)

# Define a route for the root URL ('/')
@app.route('/')
def hello_world():
    hostname = os.environ.get('HOSTNAME')
    return f'Hello, Docker. hostname: {hostname}'

@app.route('/home')
def home():
    return 'Home page from Docker'

# Only run the app if this file is run directly (not imported)
if __name__ == '__main__':
    # Start the Flask development server
    # host='0.0.0.0' makes the server accessible from any IP
    # port=8080 sets the port number for the server
    app.run(host='0.0.0.0', port=8080)

