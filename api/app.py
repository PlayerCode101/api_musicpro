from crypt import methods
from flask import Flask, jsonify, request
from flask_mysqldb import MySQL
from config import config
import functions
import var

app = Flask(__name__)
app.config['JSON_AS_ASCII'] = False
connection_mysql = MySQL(app)

def error404(error):
  return '<h1>Lo sentimos. Página no encontrada...</h1>', 404

# product_list
@app.route('/products/', methods=['GET'])
def product_list():
  cursor = connection_mysql.connection.cursor()
  return functions.product_list_subtype(cursor, var.view_product_list)

# guitar_product_list
@app.route('/products/guitar/', methods=['GET'])
def guitar_product_list():
  cursor = connection_mysql.connection.cursor()
  return functions.product_list_subtype(cursor, var.view_guitar_list)

# bass_product_list
@app.route('/products/bass/', methods=['GET'])
def bass_product_list():
  cursor = connection_mysql.connection.cursor()
  return functions.product_list_subtype(cursor, var.view_bass_list)

# piano_product_list
@app.route('/products/piano/', methods=['GET'])
def piano_product_list():
  cursor = connection_mysql.connection.cursor()
  return functions.product_list_subtype(cursor, var.view_piano_list)

# acoustic_drum_product_list
@app.route('/products/acoustic_drum/', methods=['GET'])
def acoustic_drum_product_list():
  cursor = connection_mysql.connection.cursor()
  return functions.product_list_subtype(cursor, var.view_acoustic_drums_list)

# electric_batteries_product_list
@app.route('/products/electric_batteries/', methods=['GET'])
def electric_batteries_product_list():
  cursor = connection_mysql.connection.cursor()
  return functions.product_list_subtype(cursor, var.view_electric_batteries_list)

# bolster_product_list
@app.route('/products/bolster/', methods=['GET'])
def bolster_product_list():
  cursor = connection_mysql.connection.cursor()
  return functions.product_list_subtype(cursor, var.view_bolster_list)

# boxes_product_list
@app.route('/products/boxes/', methods=['GET'])
def boxes_product_list():
  cursor = connection_mysql.connection.cursor()
  return functions.product_list_subtype(cursor, var.view_boxes_list)

# headset_product_list
@app.route('/products/headset/', methods=['GET'])
def headset_product_list():
  cursor = connection_mysql.connection.cursor()
  return functions.product_list_subtype(cursor, var.view_headset_list)

# monitor_product_list
@app.route('/products/monitor/', methods=['GET'])
def monitor_product_list():
  cursor = connection_mysql.connection.cursor()
  return functions.product_list_subtype(cursor, var.view_monitor_list)

# loudspeakers_product_list
@app.route('/products/loudspeakers/', methods=['GET'])
def loudspeakers_product_list():
  cursor = connection_mysql.connection.cursor()
  return functions.product_list_subtype(cursor, var.view_loudspeakers_list)

# wires_product_list
@app.route('/products/wire/', methods=['GET'])
def wires_product_list():
  cursor = connection_mysql.connection.cursor()
  return functions.product_list_subtype(cursor, var.view_wires_list)

# microphone_product_list
@app.route('/products/microphone/', methods=['GET'])
def microphone_product_list():
  cursor = connection_mysql.connection.cursor()
  return functions.product_list_subtype(cursor, var.view_microphone_list)

# interface_product_list
@app.route('/products/interface/', methods=['GET'])
def interface_product_list():
  cursor = connection_mysql.connection.cursor()
  return functions.product_list_subtype(cursor, var.view_interface_list)

# mixer_product_list
@app.route('/products/mixer/', methods=['GET'])
def mixer_product_list():
  cursor = connection_mysql.connection.cursor()
  return functions.product_list_subtype(cursor, var.view_mixer_list)

# product
@app.route('/product/<sku_code>', methods=['GET'])
def selected_product(sku_code):
  cursor = connection_mysql.connection.cursor()
  return functions.product_list_subtype(
    cursor,
    var.view_product_list + ' WHERE sku_code = {}'.format(sku_code)
  )

#

if __name__ == '__main__':
  app.config.from_object(config['development'])
  app.register_error_handler(404, error404)
  app.run()

