#property script_show_inputs


input double num_1 = 0;
input double num_2 = 0;

void OnStart(){

   // llamada a la funcion, se le pasan los dos inputs
   Print("La media de ", num_1, " y ", num_2," es: ", media_de_dos_numeros(num_1, num_2));
   
   // llamada a la funcion void
   imprime_media_de_dos_numeros(num_1, num_2);

   
}

// creando la funcion
double media_de_dos_numeros(double num1, double num2){
   double resultado = (num1 + num2)/2;
   return resultado;
}

// creando la funcion tipo void esta funcion no tiene un return
void imprime_media_de_dos_numeros(double num1, double num2){
   double resultado = (num1 + num2)/2;
   Print(resultado);
}