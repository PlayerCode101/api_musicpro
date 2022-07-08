from distutils.command.config import config
from distutils.debug import DEBUG


class DevelopmentConfig():
  DEBUG = True
  MYSQL_HOST = '0.0.0.0'
  MYSQL_PORT = 23306
  MYSQL_USER = 'root'
  MYSQL_PASSWORD = 'CcArlos'
  MYSQL_DB = 'musicpro'

config = {
  'development': DevelopmentConfig
}