


void OnStart()
  {
   // arreglo de una dimension
   int arr[4] = {4, -5, 76, 23}; 
   Print(arr[0]); // retorna 4

   
   
   // arreglo multidimensional
   int arrmultidi [2][4] = {{ 20 , 30,  44,  56},
                        { 123, 234, 345, 567} };
   
   Print(arrmultidi[1][0]); // retorna 123
   
   // recorre todos los elementos del array   
   for (int i=0; i < 2; i++){
      for (int j = 0; j < 4; j++ ){
         Print (arrmultidi [i][j]);
      }
   }
   
   
  }

