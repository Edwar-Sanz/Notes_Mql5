

#property script_show_inputs // Muestra la ventana de los inputs

 // PARAMETROS
input int INP_VECES = 10;
input int INP_PAUSA = 10;

// VARIABLES GLOBALES

string saludo = "Hola";


// void OnStart es la funcion principal donde se ejecuta todo el código
void OnStart(){

   imprimir_nombre_con_for();
   
   
   Print("Script terminado");
   
   
}

// Definiendo funcion.

void imprimir_nombre_con_for(){
   for( int i=1 ; i <= INP_VECES ; i++ ) {
   Print( saludo , " Este es el saludo número: ", i," Mensaje impreso a las: ", TimeCurrent() );
   Sleep( INP_PAUSA * 1000 );
   }  
}

void imprimir_nombre_con_wile(){
   int i = 0;
   while( i <= INP_VECES) {
      Print( saludo , " Este es el saludo número: ", i," Mensaje impreso a las: ", TimeCurrent() );
      Sleep( INP_PAUSA * 1000 );
      i++;
   }  
}