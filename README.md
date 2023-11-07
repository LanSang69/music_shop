# Music_shop

EL proyecto "musc_shop" es una tienda de compras bajo el nombre de "La nota mala" que busca utilizar una base de datos para optimizar las ventas y registrar todas las operaciones para manejar los datos del negocio.

## Tabla de Contenidos

- [Descripción detallada](#descripción-detallada)
- [Requisitos](#requisitos)
- [Instalación](#instalación)

## Descripción detallada
Estructura General:

El proyecto "Music_shop" se ha diseñado siguiendo una estructura organizada en carpetas para gestionar de manera eficiente las diferentes funcionalidades:

Carpeta "php": Aquí se encuentra el código PHP dividido según su propósito:

"empleado": Gestiona altas, bajas y modificaciones de productos, así como las ventas desde el mostrador.
"dueño": Permite la gestión de empleados, incluyendo altas, bajas y modificaciones.
"design": Se encarga de aspectos estéticos relacionados con datos de la base, como el número de elementos en el carrito.
"clients": Contiene la lógica relacionada con clientes, incluyendo funciones de inicio de sesión, registro y gestión de compras.
Carpeta "src": Almacena información para empleados y dueño, incluyendo adiciones manuales de empleados y productos para ventas en el mostrador. También maneja el inicio de sesión de empleados y dueño, así como las bases de datos en bruto, como tablas para consultar información.

Otros archivos: Se ubican fuera de las carpetas anteriores y se utilizan para gestionar la página principal tanto para usuarios logeados como no logeados.

Notas Importantes:

La parte de clientes está desarrollada principalmente con PHP, JavaScript y CSS, sin incluir HTML. En contraste, la parte de empleados y dueño combina HTML con PHP, JavaScript y CSS.
Estructura de la Página de Ventas en Mostrador:

El diseño se basa en la existencia de tres filtros.
Inicio de Sesión: Los usuarios deben ingresar su nombre de usuario y contraseña para acceder a la plataforma.

Gestión de Altas, Bajas y Modificaciones: Una vez logeados, los usuarios pueden realizar acciones específicas, como altas, bajas y modificaciones. Los administradores pueden realizar estas acciones con empleados, y los empleados pueden hacerlo con productos y ventas.

Visualización de Tablas: Al seleccionar una acción, los usuarios pueden acceder a un formulario que les permite ver las tablas completas de la base de datos. Esta página está diseñada para realizar cambios en la base de datos desde el mostrador.

Diseño de la Página para Clientes:

El diseño de la página para clientes se compone principalmente de dos elementos:

Encabezado (Header): En el encabezado, se proporcionan enlaces a todas las secciones de la página, y se muestra el carrito de compras. La apariencia varía según si el usuario está logeado o no.

Versión No Logeada
Versión Logeada: En este caso, se muestra el nombre del usuario que ha iniciado sesión.
Visualización de Productos: La visualización de productos se gestiona a través del archivo "display_prod.php" en la carpeta "php/clients". Este archivo accede a la base de datos de productos y muestra todos los elementos en forma de tabla. Se realiza una consulta a la base de datos para obtener y mostrar los datos.

Notas sobre el Código:

En muchos archivos HTML, verás una sintaxis especial que permite interactuar con la base de datos desde JavaScript.
La carpeta "src" es la única que utiliza estos métodos; todo lo demás, incluyendo la página de inicio y la página de inicio de sesión, utiliza PHP en lugar de HTML por razones de conveniencia.
PHP permite trabajar con HTML dentro de su código, por lo que muchos archivos PHP son, en esencia, archivos HTML con la capacidad de incluir código PHP.
Toda la lógica, excepto la lógica de compra, se encuentra en el archivo "script.js", que es el archivo de script modular del proyecto.
Esta revisión organiza la información en secciones más claras y proporciona una visión general más concisa del proyecto "Music_shop". Puedes agregar o ajustar la descripción según las necesidades de tu público y proyecto.

## Requisitos

- psql 16.0 o superior
- XAMPP 8.2.4-0

## Instalación

1. Clona el repositorio desde GitHub:

```bash
git clone https://github.com/LanSang69/music_shop.git
cd music_shop
```