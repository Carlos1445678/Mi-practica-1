#from faker import Faker
#fake = Faker()
#print("Correo:", fake.email())
#print("Pais:", fake.country())
#print("Nombre:", fake.nombre())
#print("Texto:", fake.text())
#print("URL:", fake.url())

import argparse
parser = argparse.ArgumentParser()
parser.add_argument("-p1", dest="paraml", help="parametro 1")
params = parser.parse_args()
print(params.param1)