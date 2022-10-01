from app import app
from flaskext.mysql import MySQL

mysql = MySQL()
 
# MySQL configurations
app.config['MYSQL_DATABASE_USER'] = 'Vribas@raizencrudbanco'
app.config['MYSQL_DATABASE_PASSWORD'] = 'Venon9301@'
app.config['MYSQL_DATABASE_DB'] = 'python_crud'
app.config['MYSQL_DATABASE_HOST'] = 'raizencrudbanco.mysql.database.azure.com'
mysql.init_app(app)
