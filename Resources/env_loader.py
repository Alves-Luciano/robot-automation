# env_loader.py
import os
from dotenv import load_dotenv

load_dotenv()

def get_env_variable(name, default=None):
    """Retorna o valor de uma variável de ambiente específica."""
    return os.getenv(name, default)
