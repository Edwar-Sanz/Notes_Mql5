
int OnInit(){
   

return(INIT_SUCCEEDED);
}

void OnDeinit(const int reason){
   
 
}

void OnTick(){
   
   int order_totals = OrdersTotal();
   ulong order_ticket = 0;
   
   for(int i= 0;   i < order_totals;   i++){   
      order_ticket = OrderGetTicket( i );
      //Funciones comerciales
      if (OrderSelect(order_ticket) == true){
         Print("Volumen= ", OrderGetDouble(ORDER_VOLUME_CURRENT),
               "  Tipo de orden: tipo= ", OrderGetInteger(ORDER_TYPE), " ",EnumToString(ORDER_TYPE) , 
               "  Precio de la orden= ", OrderGetDouble(ORDER_PRICE_OPEN),
               "  Simbolo= ", OrderGetString(ORDER_SYMBOL), 
               "  Ticket= ", order_ticket,
               "  Order= ", i,
               "  Total de ordenes= ", order_totals);   
      } 
   }
   Print(" ");

   
}




