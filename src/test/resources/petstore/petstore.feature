Feature: Petstore API - flujo completo

Background:
  * url 'https://petstore.swagger.io/v2'
  * def petId = 10001

 Scenario: Crear mascota
   # Crear mascota
   Given path 'pet'
   And request
   """
   {
        "id": #(petId),
         "category": { "id": 1, "name": "dogs" },
         "name": "Machin",
         "photoUrls": ["https://www.freepik.es/fotos-vectores-gratis/perro"],
         "tags": [{ "id": 1, "name": "pequeño" }],
         "status": "available"
   }
   """
   When method post
   Then status 200
   And match response.id == petId
   And match response.status == 'available'

  Scenario: Consultar mascota

   # Buscar por ID
       Given path 'pet', petId
       When method get
       Then status 200
       And match response.id == petId
       And match response.status == 'available'

  Scenario: Actualizar mascota

     #Actualizar (PUT) nombre y status a sold
     Given path 'pet'
     And request
     """
     {
       "id": #(petId),
       "category": { "id": 1, "name": "dogs" },
       "name": "FiruFiru",
       "photoUrls": ["https://www.freepik.es/fotos-vectores-gratis/perro"],
       "tags": [{ "id": 1, "name": "Grande" }],
       "status": "sold"
     }
     """
     When method put
     Then status 200
     And match response.id == petId
     And match response.status == 'sold'
     And match response.name == 'FiruFiru'

Scenario:  Consultar la mascota modificada por estatus
   # Buscar por ID
     #Buscar por status = sold
     Given path 'pet', 'findByStatus'
     And param status = 'sold'
     When method get
     Then status 200
     And match response[*].status contains 'sold'