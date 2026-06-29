import sys
import os

# Esto añade el directorio raíz al path de Python
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))

from app import app

def test_inicio():
    cliente = app.test_client()
    respuesta = cliente.get("/")
    assert respuesta.status_code == 200