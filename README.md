GUIA PARA CONFIGURAR EL PROYECTO
-----------------------------------------------------
----Tener instalado la herramienta de PRETTIER----
--BACKEND--
La primer cosa a hacer es buscar el objeto "config" en "server.js", una vez ahi se deben modificar las propiedades 
  "user" (-- Usuario de la base de datos --),
  "password" (-- Contraseña del usuario de la base de datos --),
  "server" (-- Nombre de la instancia de SQL --),
  "database" (-- Nombre de la base de datos --).
En caso de no tener las librerias en importadas ejecutar este codigo "npm install express mssql dotenv cors" en la terminal  dentro de la carpeta "Backend".
-----------------------------------------------------
--LABORATORIOS-DIGITALES-MAIN--
Sí faltan dependencias del proyecto en general tienes que instalar lo siguiente: 
"npm install bootstrap",
"npm install react-bootstrap", 
"npm install overlayscrollbars overlayscrollbars-react", 
"npm install react-router-dom".
-----------------------------------------------------
--SPS--
Buscar el repositorio "Stored-Procedures" dentro de github, ahi se encuentran todos los SP a usar (el SP "ResultadosECEI" se deberia encontrar en su base de datos), 
una vez en el repositorio buscar la rama de "agregar-nuevos-sps" y descargar los querys, despues de descargar los sps ejecutarlos dentro de sql (verificar que la base de datos sea la "liPruebas").
(Usar el SP_ValidarCredencialesCuentaLaboratoriosWeb2.0 en lugar de SP_ValidarCredencialesCuentaLaboratoriosWeb. Error de nombre)
-----------------------------------------------------
--Tablas--
La unica tabla a crear es "CuentaResultadosWeb"
El primer paso es buscar el repositorio dentro de "TablesDB", una vez encontrado descarga el archivo .sql y correrlo dentro de la base de datos con el nombre hiPruebas24.

