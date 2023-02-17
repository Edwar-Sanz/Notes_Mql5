
#include <Trade\Trade.mqh>
CTrade trade;

MqlRates rates[];
MqlTick precio;
MqlDateTime time;


double d = pow(10, - _Digits);
bool time_passed = true;


int prof = 1000;
int loss = 100;

//----------------------------------------------------------------------------------------------
int OnInit(){ 

   EventSetTimer(60);
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
   
   SymbolInfoTick(_Symbol, precio);
   CopyRates( _Symbol, _Period, 0, 2, rates);
   ArraySetAsSeries(rates, true);
   
   if( rates[1].close - rates[1].open > 0 && rates[0].spread <= 2){
      
      trade.Buy(0.1,_Symbol, precio.ask, precio.bid - (loss *d), precio.ask + (prof *d));
      time_passed = false;
      EventSetTimer(60*10);
   }
   else if( rates[1].close - rates[1].open < 0 && rates[0].spread <= 2){
      trade.Sell(0.1, _Symbol, precio.bid, precio.ask + (loss *d), precio.bid - (prof *d));
      time_passed = false;
      EventSetTimer(60*10);
   }
  
}

//----------------------------------------------------------------------------------------------

void OnTimer(void){
   time_passed = true;
}



