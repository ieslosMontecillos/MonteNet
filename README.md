# montenet

## Enlaces de Interes

[Tutorial Git](https://www.youtube.com/watch?v=zH3I1DZNovk "codigofacilito")

[Markdown-Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet "markdown")

## Modulos a Desarrollar

| Responsable 	| Modulo 				| Rama					| 
| ---- 			| -----------------	 	| ----					|
| Jesús 		| Backend 			 	| backend				|
| Álvaro 		| Informes de Tutoría	| tutoria				|
| Juan 			| Reserva			 	| reserva				|
| Pepe 			| Mensajeria		 	| mensajeria			|
| Patricia 		| Actas de departamento	| actasDepartamento 	|
| Cristian 		| Actas de evaluación	| actasEvaluacion		|
| Adrián 		| Incidencias TIC		| incidencas			|
| Antonio 		| Frontend			 	| frontend				|

## - - Instrucciones - - Información - - README - -

Se realizaran quedadas grupales los domingos de cada semana para resolver dudas, y ver como van los diferentes modulos.

Cada domingo habra un moderador para facilitar la comunicación entre los responsables.

El moderador sera el encargado de preguntar a los diferentes responsables sobre el modulo que se esta desarrollando.

__La rama master, se utilizara para unificar los modulos en un solo proyecto. Esta rama contendra los archivos basicos que se utilizaran en la aplicación.__

___Para trabajar en el proyecto, se deben tener varias cosas claras.___

- Cada uno realizara su modulo en su __equipo local__.

- El dominio [montenet.hol.es](http://montenet.hol.es/ "montenet.hol.es") sera accedido por una persona responsable de subir los archivos del github. Mas concretamente la rama master.

- Los archivos de los diferentes modulos se subiran a la rama que corresponda. EJ: Yo estoy trabajando en el backend, y tendre que utilizar la rama "backend". En la tabla anterior se puede ver en que rama tienes que trabajar.

### Mini-Guia.

Para empezar se situa en el lugar de trabajo en este caso en la carpeta __.\xampp\htdocs\__ que es el servidor local, en la que se copiara el contenido del github. Hay que tener en cuenta que al hacer el git clone, se descarga el contenido en una carpeta __.\MonteNet__ .

	git clone https://github.com/ieslosMontecillos/MonteNet.git

Se comprueba que en el proyecto esten todos los archivos, y las ramas del git. Para comprobar las ramas se utiliza el comando:

	git branch

Se vera en una rama un __*__ lo que indica la rama que se esta utilizando, esta rama sera __master__. Ahora se pasara a cambiar a la rama del modulo a desarrollar, en mi caso es backend.

	git checkout backend

Se comprueba que se ha cambiado de rama con el comando anterior ___git branch___ .

Ahora todos los cambios que se realizen se guardaran en su respectiva rama. 

Acordaros de ir haciendo commit periodicamente.

Si no sois mucho de comandos tambien existen varias aplicaciones de escritorio para sincronizar con los repositorios de github.

- GitHub desktop
- SourceTree

Respecto a las dudas, errores, fallos que se encuentren en el desarrollo, se devera crear un issues en el github detallando el problema para que los compañeros puedan ayudar. Asi podemos ver lo fallos que van surguiendo.

### BD

En la E/R las entidades y las relaciones, se encuentran en Mayuscula para facilitar la lectura, los atributos estan en minuscula.

Se puede encontrar la información en la carpeta \bd , echale un vistazo al fichero montenet-tablas.pdf.

#### Conexión base de datos.

Para la conexión de la base de datos, modificar el archivo funciones.php . En este archivo se encuentran las funciones que se van a utilizar. 

Hay otro archivo que se llama conexion.php en el que podras observar las variables que se guardan en la session.

### CSS

Todos los estilos se realizaran en el fichero __style.css__ .

#### Gama de colores.

La siguiente gama de colores esta sacada de el logo de institulo.

- color 1 : #00C94F Verde
- color 2 : #00D2FB Azul
- color 3 : #FF0000 Rojo

FALTA POR DETERMINAR

#### Editor Texto.

Respecto al editor de texto, actualmente ya se esta utilizando __bootstrap-wysiwyg__ si no me equivoco lo esta utilizando Pepe.

Hay otros editores de texto como :

- ckeditor.
- tiny MCE.

Editor de Texto : POR DETERMINAR.

#### Maquetación/Responsive.

Se tendra encuenta que la aplicación tiene que ser responsive, por eso se utilizara las clases.

- container, container-fluid
- row
- col-[xs,sm,md,lg]

Acordaros que bootstrap utiliza un sistema de grid con 12 columnas.

