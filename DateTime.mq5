




void OnStart(){

   // el tipo datetime
   
   datetime date = D'01.01.2023  16:30:00';


	// ejemplo de como hacer condicion de tiempo

		string tm = TimeToString(time[i],TIME_MINUTES);

         if (tm <= "16:30" || tm >= "22:30"){ 
            vela_angleBuffer[i] = 0;
         }else{
            vela_angleBuffer[i] = 1;   
         }
   
	/*
	
	TimeCurrent
		Devuelve la última hora conocida del servidor (la hora de llegada de la última cotización) 			en el formato datetime

	TimeTradeServer
		Devuelve la hora actual de calculación del servidor comercial

	TimeLocal
		Devuelve la hora local del ordenador en el formato datetime

	TimeGMT
		Devuelve la hora GMT en el formato datetime, teniendo en cuenta el cambio de horarios de verano o de 		invierno, según la hora local del ordenador en el que está funcionando el terminal de cliente

	TimeDaylightSavings
		Devuelve el indicio de cambio horario verano/invierno

	TimeGMTOffset
		Devuelve la diferencia actual entre la hora GMT y hora local del ordenador en segundos, teniendo en 		cuenta el cambio horario verano/invierno

	TimeToStruct
		Convierte un valor del tipo datetime a una variable del tipo de estructura MqlDateTime

	StructToTime
		Convierte  una variable del tipo de estructura MqlDateTime a un valor del tipo datetime

	*/



 }
