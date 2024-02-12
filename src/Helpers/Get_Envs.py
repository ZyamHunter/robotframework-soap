import os
from dotenv import load_dotenv


def get_enviroment_variables():
    load_dotenv()

    environment_variables = {
        'WSDL_URL': os.getenv('WSDL_URL')
        'wsdl_brazilian_post_office': os.getenv('wsdl_brazilian_post_office')
    }

    return environment_variables