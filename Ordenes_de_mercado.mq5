
#include <Trade\Trade.mqh>
CTrade trade;

MqlRates rates[];
MqlTick precio;
MqlDateTime time;


double d = pow(10, - _Digits);
bool time_passed = true;

int spread = 5;
int prof = 1;
int loss = 2000;
int on_timer = 60;
//----------------------------------------------------------------------------------------------
int OnInit(){ 

   return(INIT_SUCCEEDED);
 }
//----------------------------------------------------------------------------------------------
void OnDeinit(const int reason){   
}
//----------------------------------------------------------------------------------------------
void OnTick(){

   if (time_passed == false) return;
   TimeCurrent(time);
   // se puede acceder a las ordenes mediante la estructura struct MqlTradeRequest
   // sin embargo es mas comodo usar Ctrade
   //ejemplo:
   
   SymbolInfoTick(_Symbol, precio);             //copia la informacion del tick a la estructura precio (bid, ask, etc...)
   CopyRates( _Symbol, _Period, 0, 2, rates);   //copia la informacion del barras a la estructura rates (open, close, etc...)
   ArraySetAsSeries(rates, true);               // invierte el orden del array rates
   
   if( rates[1].close - rates[1].open > 0 && rates[0].spread < spread){
      
      trade.Buy(0.1,_Symbol, 0, precio.bid - (loss *d), precio.ask + (prof *d));
      time_passed = false;
      EventSetTimer(on_timer);
   }
   else if( rates[1].close - rates[1].open < 0 && rates[0].spread < spread){
      trade.Sell(0.1, _Symbol, 0, precio.ask + (loss *d), precio.bid - (prof *d));
      time_passed = false;
      EventSetTimer(on_timer);
   }
  
}

//----------------------------------------------------------------------------------------------

void OnTimer(void){
   time_passed = true;
   int i = PositionsTotal() - 1;
   if( i > 0){
      while (i >= 0) {
         trade.PositionClose(PositionGetTicket(i));
         i--;   
      } 
   }
   
   
}



