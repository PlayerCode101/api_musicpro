from sqlite3 import connect
from types import MethodType
from flask import Flask, jsonify, request
from flask_mysqldb import MySQL
from config import config
import var

def remove_null_value(dictionary: dict) -> dict:
  """
  Función para eliminar los campos que contienen datos nulos en
  un diccionario.

  dictionary: Diccionario que se va a editar.

  return: Entrega el mismo diccionario con los campos con datos nulos
  eliminados.
  """
  return {
    key: remove_null_value(value) if isinstance(value, dict) else value
    for key, value in dictionary.items()
    if value != None
  }

def introduct_list(cursor, query_sql: str) -> dict:
  """
  Función para listar los productos desde la base de datos.

  cursor: Conexion mysql.
  query_sql: La consulta que se ejecutará en la base de datos.

  return: La salida de esta función es un diccionario con los
  datos del producto en cuestión.
  """
  cursor.execute(query_sql)
  data_products = cursor.fetchall()
  if data_products != None:
    products = []
    for row in data_products:
      product = {
        'sku_code': row[0],
        'name_product': row[1],
        'name_type': row[2],
        'name_subtype': row[3],
        'name_brand': row[4],
        'name_color': row[5],
        'name_rope_type': row[6],
        'name_material': row[7],
        'dimensions': row[8],
        'not_include': row[9],
        'n_keys': row[10],
        'voltage': row[11],
        'type_conection': row[12],
        'price': row[13],
        'discount': row[14]
      }
      products.append(remove_null_value(product))
    return jsonify({'product_data': products})
  else:
    return jsonify({'product_data': None})

# subtype products list
def product_list_subtype(cursor, view_name: str) -> dict:
  """
  Función para obtener los datos de los productos por subtipo.

  cursor: Conexion mysql.
  view_name: Nombre de la vista.

  return: Entrega un diccionario con los datos de productos.
  """
  query_sql = var.query_sql_list.format(var.schema_bd, view_name)
  return introduct_list(cursor, query_sql=query_sql)
