

#property indicator_separate_window
#property indicator_buffers 1
#property indicator_plots   1
//---------------------------------------------------------------------------------------------------------

//--- plot ima                        
#property indicator_label1  "ima"            // Nombre 
#property indicator_type1  DRAW_LINE         // tipo de linea
#property indicator_color1  clrYellow        // color de la linea
#property indicator_style1  STYLE_SOLID      // estilo de la linea
#property indicator_width1  1                // grosor de la linea

//---------------------------------------------------------------------------------------------------------
double   imaBuffer[];
int      handle_ima;

//---------------------------------------------------------------------------------------------------------

int OnInit(){
   SetIndexBuffer(0, imaBuffer,INDICATOR_DATA);
   handle_ima = iMA(_Symbol,_Period,1,0,MODE_SMA,PRICE_CLOSE);

   
   return(INIT_SUCCEEDED);
}

//------------------------------------------------------------------------------------------------------------------

int OnCalculate(const int rates_total, const int prev_calculated, const datetime &time[],
                const double &open[], const double &high[], const double &low[], const double &close[],
                const long &tick_volume[], const long &volume[], const int &spread[]){

   
   CopyBuffer(handle_ima, 0, 0, rates_total, imaBuffer);
   
   Print(imaBuffer[rates_total - 1]);

   return(rates_total);
}

