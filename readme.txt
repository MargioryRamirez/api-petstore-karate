EJERCICIO DE AUTOMATIZACIÓN DE APIs - PETSTORE
Herramienta: Karate Framework

-------------------------------------------------------
1. DESCRIPCIÓN
-------------------------------------------------------
Este proyecto contiene la automatización de pruebas
para la API pública Petstore:

https://petstore.swagger.io/

Se implementaron pruebas automatizadas para validar
los siguientes escenarios:

1. Crear una mascota
2. Consultar mascota por ID
3. Actualizar nombre y estado a "sold"
4. Consultar mascota modificada por estado

El flujo completo valida entradas, salidas,
códigos de respuesta HTTP y datos retornados.

-------------------------------------------------------
2. TECNOLOGÍAS UTILIZADAS
-------------------------------------------------------
- Java JDK 17
- Maven 3.9.x
- Karate 1.4.1
- JUnit 5
- IntelliJ IDEA

-------------------------------------------------------
3. REQUISITOS PREVIOS
-------------------------------------------------------
- Tener instalado JDK 17
- Tener instalado Maven
- Tener conexión a internet

Verificar instalación con:

java -version
mvn -version

-------------------------------------------------------
4. INSTRUCCIONES DE EJECUCIÓN
-------------------------------------------------------

Clonar el repositorio:

git clone <URL_DEL_REPOSITORIO>

Ingresar al directorio del proyecto:

cd api-petstore-karate

Ejecutar las pruebas automatizadas:

mvn clean test

-------------------------------------------------------
5. REPORTE DE EJECUCIÓN
-------------------------------------------------------

Al finalizar la ejecución, el reporte se genera en:

target/karate-reports/karate-summary.html

Abrir ese archivo en el navegador para visualizar
el detalle de ejecución de los escenarios.

-------------------------------------------------------
