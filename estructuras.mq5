


void OnStart(){

   // Tipos de datos enum
   // son una lista de variables separadas por comas

   enum dias{
      lunes, martes, miercoles, jueves, viernes
   };
   Print(martes); // retorna 1
   Print( EnumToString(martes)); // retorna "martes"
   
   
   // Tipo struct
   struct persona{
      //atributos
      string nombre;
      int    edad;
      double altura;
     }; 
   
   // en esta parte se usa la estructura para crear la primera "persona"
   persona primera;           // se inicializa
   primera.nombre = "Jhon";   // se accede a cada una una de las variables
   primera.edad = 20;
   primera.altura = 1.60;
   
   // se recicla la estructura para crear con las mismas varibles otra "persona"
   persona segunda;
   segunda.nombre = "Edwar";
   segunda.edad = 30;
   segunda.altura = 1.70;
   
   persona maria;
   maria.nombre = "maria";
   
   Print(maria.nombre); //retorna maria
   
   
   // se puede crear un array donde sus elementos sea una estructura
   
   persona arr[2]; // se crea el array sus elementos tendran los atributos de la estructura persona
   
   // este es el primer el elemento del arrar "arr" o sea el que está en la posicion [0]
   arr[0].nombre = "Jose";
   arr[0].edad = 14;
   arr[0].altura = 1.55;
   
   // este ese el segundo elemento del array
   arr[1].nombre = "Pedro";
   arr[1].edad = 16;
   arr[1].altura = 1.56;
   
   

}

