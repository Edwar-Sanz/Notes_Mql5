

int OnInit(){

   Print("Se ejecuta una sola vez, y lo hace cuando el robot inicia ");

return(INIT_SUCCEEDED);
}

void OnDeinit(const int reason){
   
   Print("Se ejecuta cuando el robot ha finalizado");  
}

void OnTick(){

   int order_totals = OrdersTotal();
   Print("Se ejecuta cada tick, ejemplo... ordenes pendientes: ", order_totals);

}

