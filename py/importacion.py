"""
	AUTOR 		: JESÚS ALEJANDRO RÍOS LÓPEZ
	DESCRIPCIÓN : En este fichero se trataran los archivos .txt para la importación a la base de datos.
	DATE 		: 30/04/2016
	FUNCIONAL 	: NO

	[[[-----------Conectar con la base de datos-----------]]]
	http://librosweb.es/libro/python/capitulo_12/conectarse_a_la_base_de_datos_y_ejecutar_consultas.html
"""

# IMPORTACIONES
import re

def diasFestivos():
	# Abrir el archivo para lectura
	f = open('./importacion/200CalEscCent.txt','r')
	# Inicializamos las listas
	dias = []
	descripcion = []

	while True:
		linea = f.readline()
		if not linea: break
		"""
			\d --> digito
			\w --> letra alfanumerica
			\s --> espacio
			Esta expresión regular equivale a la fecha en formato       dd/mm/aaaa
			\d{2}/\d{2}/\d{4}
			Cualquiere palabra hasta llegar al |
			[\w*\s]*
		"""
		if re.match("(\d{2}/\d{2}/\d{4})", linea):
			mo = re.match("(\d{2}/\d{2}/\d{4})\|([\w*\s]*)", linea)
			dias.append(mo.group(1))
			descripcion.append(mo.group(2).rstrip(" "))

	print(dias[0]+" "+descripcion[0])
	f.close()

def alumnos():
	# Abrir el archivo para lectura
	f = open('./importacion/RegAlum.txt','r')
	# Inicializamos las listas
	idEscolar = []
	dni = []
	fechaNac = []
	unidad = []
	apellido1 = []
	apellido2 = []
	nombre = []

	while True:
		linea = f.readline()
		if not linea: break

		"""
			\D --> cualquier caracter no númerico 

			Cualquiere palabra hasta llegar al |
			[\w*\s]*
		"""

		if re.match("[\w*\s*,]*\|", linea):
			mo = re.match("[\w*\s*,]*\|[\w*\s*]*\|(\d*\s*)\|([\w*\-\s*]*)\|[\w*\/.,º\-\(\)\:\s\d]*\|\d{5}\s*\|[\w*\s*\(\)]*\|(\d{2}/\d{2}/\d{4})\s*\|\w*\s*\|[\d*/\s*]*\|[\d*/\s*]*\|[\w*\d*\s*\.\@\_\-]*\|[\d\º\s*\w*\.\(\)]*\|[\d*\s*/]*\|([\d\w\-\s]*)\|([\w*\s*]*)\|([\w*\s*]*)\|([\w*\s*]*)\|", linea)
			idEscolar.append(mo.group(1).rstrip(" "))
			dni.append(mo.group(2).rstrip(" "))
			fechaNac.append(mo.group(3).rstrip(" "))
			unidad.append(mo.group(4).rstrip(" "))
			apellido1.append(mo.group(5).rstrip(" "))
			apellido2.append(mo.group(6).rstrip(" "))
			nombre.append(mo.group(7).rstrip(" "))

	
	print(idEscolar[0]+" "+dni[0]+" "+fechaNac[0]+" "+unidad[0]+" "+apellido1[0]+" "+apellido2[0]+" "+nombre[0])
	f.close()

def departamentos():
	# Abrir el archivo para lectura
	f = open('./importacion/RegDptPerCen.txt','r')
	# Inicializamos las listas
	descripcion = []
	jefeDep = []

	while True:
		linea = f.readline()
		if not linea: break

		# if re.match("[\w*\s*]*\|\d{2}/\d{2}/\d{4}\|\s*\|[\w*\s*,]*\|", linea):
		# 	mo = re.match("([\w*\s*]*)\|\d{2}/\d{2}/\d{4}\|\s*\|([\w*\s*,.]*)\|", linea)
		# 	print(mo.group(0))
		if re.match("[\w*\s*]*\|\d{2}/\d{2}/\d{4}\|\s*\|[\w*\s*,.]*\|", linea):
			mo = re.match("([\w*\s*]*)\|\d{2}/\d{2}/\d{4}\|\s*\|([\w*\s*,.]*)\|", linea)
			descripcion.append(mo.group(1).rstrip(" "))
			jefeDep.append(mo.group(2).rstrip(" "))

	print(descripcion[0]+" "+jefeDep[0])
	f.close()

def imparte():
	# --------------------Cuidado con el lista[0]--------------------
	# Abrir el archivo para lectura
	f = open('./importacion/RelMatProUni.txt','r')
	# Inicializamos las listas
	asignatura = []
	unidad = []
	# nombre completo
	profesor = []
	while True:
		linea = f.readline()
		if not linea: break
		if re.match("[\w*\s*\º\(\)\.]*\|[\w*\s*\(\)]*\|[\d\-\w*\s*]*\|[\w*\s*,.]*", linea):
			mo = re.match("[\w*\s*\º\(\)\.]*\|([\w*\s*\d*\(\)\&\;\-\,]*)\|([\d\-\w*\s*]*)\|([\w*\s*,.]*)", linea)
			asignatura.append(mo.group(1).rstrip(" "))
			unidad.append(mo.group(2).rstrip(" "))
			profesor.append(mo.group(3).rstrip(" "))

	print(asignatura[1]+" "+unidad[1]+" "+profesor[1])
	f.close()

def profesores():
	# Abrir el archivo para lectura
	f = open('./importacion/RelPerCen.txt','r')
	# Inicializamos las listas
	idea = []
	dni = []
	# nombre completo
	nombre = []
	# departamento al que pertenece
	puesto = []
	while True:
		linea = f.readline()
		if not linea: break
		if re.match("[\w*\s*\,\.]*\|[\d*\w*\s*]*\|[\w*\s*\(\)\.\-]*\|", linea):
			mo = re.match("([\w*\s*\,\.]*)\|([\d*\w*\s*]*)\|([\w*\s*\(\)\.\-]*)\|\d{2}/\d{2}/\d{4}\s*\|[\d*/\s*]*\|([\w*\d*\s*]*)\|", linea)
			nombre.append(mo.group(1).rstrip(" "))
			dni.append(mo.group(2).rstrip(" "))
			puesto.append(mo.group(3).rstrip(" "))
			idea.append(mo.group(4).rstrip(" "))
	print(idea[0]+" "+dni[0]+" "+nombre[0]+" "+puesto[0])
	f.close()


# diasFestivos()
# alumnos()
# departamentos()
# imparte()
profesores()
