
int OnInit(){

   

   return(INIT_SUCCEEDED);
}



void OnDeinit(const int reason){

  
  
   
}

void OnTick(){
   PositionSelect(_Symbol);
   int position_totals = PositionsTotal();
   ulong position = 0;
   
   for(int i= 0;   i < position_totals;   i++){   
      position = PositionGetTicket( i );
      Print("Volumen= ", PositionGetDouble(POSITION_VOLUME),
            "  Tipo: tipo= ", PositionGetInteger(POSITION_TYPE), " ",EnumToString((ENUM_POSITION_TYPE) PositionGetInteger(POSITION_TYPE)) , 
            "  Precio apertura= ", PositionGetDouble(POSITION_PRICE_OPEN),
            "  Precio actual= ", PositionGetDouble(POSITION_PRICE_CURRENT),
            "  tp= ", PositionGetDouble(POSITION_TP),
            "  sl= ", PositionGetDouble(POSITION_SL),
            "  Profit= ", PositionGetDouble(POSITION_PROFIT),
            "  Simbolo= ", PositionGetString(POSITION_SYMBOL), 
            "  Ticket= ", position,
            "  position= ", i,
            "  Total de posiciones= ", position_totals);      
   }
   Print(" ");
}
