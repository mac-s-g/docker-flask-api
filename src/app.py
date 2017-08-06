from flask import Flask
from optparse import OptionParser

# parse app envronment
parser = OptionParser()
parser.add_option("-e", "--env", dest="environment",
                  help="app environment", default="production")

(options, args) = parser.parse_args()

# initialize app
app = Flask(options.environment)

# initialize routes
@app.route('/')
def index():
    return "You have a flask API running inside a docker container!"

# run the app
app.run(host='0.0.0.0',
    port=5000,
    debug=(options.environment != 'production'))
