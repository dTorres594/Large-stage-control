#pragma GCC diagnostic warning "-fpermissive"

const int UNIPOLAR = 1;
const int BIPOLAR = 2;
const int IZQUIERDA = 1;
const int DERECHA = 2;
const int HALF = 1;
const int FULL = 2;
// Comandos miscelaneos
const int GET_POS = 'G';
const int STOP = 'S';
const int CLEAR = 'C';

int bip[]={     //es el arreglo donde se guardaran los pines para la salidas digitales de los bipolares 
  35,36,37,38}; //pines de salida
int uni[]={     //es el arreglo donde se guardaran los pines para la salidas digitales de los unipolares
  24,25,26,27}; //pines de salida
  
unsigned char bi[]={      //aqui se guardan los datos recibidos de labview
  0,0,0,0,0,0}; //todas las variables se guardan en en 0
                //bi[0] = Tipo de motor 1-unipolar 2-bipolar
                //bi[1] = sentido de giro 1-izquierda 2-derecha
                //bi[2] = pasos del motor MSB; bi[3] = pasos del motor LSB
                //bi[4] = velocidad en Hz
                //bi[5] = tipo de paso 1-medio paso 2-paso completo                                
String dataAtPortStr;                
unsigned char instruccion; //variable para comandos miscelaneos
int c=1, d=1, pasos_ejecutados=0;    // son loa contadores para los ciclos for de de los motores para los pasos
unsigned int pasos_MSB=0,pasos_LSB=0,pasos_totales=0; // se guardan las variables para los numeros de pasos 
int tipo, direccion, motor;
//int posicionActual = 0;    // Contador de pasos para actualizar posicion al puerto.    

void setup()
{                     //Inicion del void setup.
  Serial.begin(115200); //Inicia el puerto.
  while(!Serial) { Serial.println("Conectando a puerto..."); } 
  
  for(int i=0; i<4; i++){   //Declara la salidas de los pines de los motores inicio del ciclo. 
    pinMode(uni[i], OUTPUT);  //Salidas del bipolar.
    pinMode(bip[i], OUTPUT);  //Salidas del unipolar.
  }                           //Fin del cilo for de las salidas.
  void bu_1();        //Prende la salidas digitales para que se ponga en el paso 1 para el bipolar.  
  void bb_1();        //Prende la salidas digitales para que se ponga en el paso 1 para el unipolar.
  bu_0();             //Apaga las salidas para el motor bipolar.
  bb_0();             //apaga las salidas para el motor unipolar.  
  delay(100);         //Espera de 100 milisegundos.
  Serial.println("Comienzo");  //Dice que el motor se apago.
  delay(100);         //Espera de 100 milisegundos. 
}                     //Fin del void setup.

void loop(){                    //Inicio del void loop.
  pasos_ejecutados = 0;          //El contador de pasos se pone en ceros.  
  float time_delay;
  String message;
  int posicionActual = 0;    // Contador de pasos para actualizar posicion al puerto.    
  int str_len;              // Longitud de la cadena recibida en el puerto       
  
  if (Serial.available()) {  //Solo entra cuando hay datos en el puerto.
    dataAtPortStr = Serial.readStringUntil('\n');
    delay(50);
    //Serial.println("Data here: " + dataAtPortStr);    
    str_len = dataAtPortStr.length();
    dataAtPortStr.toCharArray(bi, str_len);

    /*for (int i = 0; i < 6; i++)     // Print received data (only for debugging)
    {
      //bi[i] = Serial.read();
      //delay(50);
      Serial.print("bi[" + (String)i + "]: ");
      Serial.println(bi[i]);
    }*/

    motor = (int)bi[0];
    direccion = (int)bi[1];
    pasos_MSB=((int)bi[2]-1)<<8;         //Se lee el byte mas significativo y se convierte a numero para los pasos del bipolar.
    pasos_LSB=(int)bi[3];                //Se lee el byte menos significartivo de los pasos bipolares.
    pasos_totales=pasos_MSB+pasos_LSB;   //Se almacenan los pasos totales sumando los bytes.      
    time_delay = 1.0/(float)bi[4]*1000; 
    tipo = (int)bi[5];  
    
    if (motor == GET_POS) { // Get position called
            message = "Pos" + (String)posicionActual;
            Serial.println(message);                     
            posicionActual = 0;
    }

    else if (motor == CLEAR){
      for (int i = 0; i < 6; i++){
        bi[i] = 0;
      }
      Serial.println("Cleared");
    }

    else if (motor == 1 || motor == 2){ // Inicia rutina de motor
      Serial.println("Ready");
        
      for(int n=0; n < pasos_totales; n++){          //Inicio del ciclo for para los paso del motor   

        if (Serial.available()){ // Revisa si hay información en el puerto antes de mover el motor
          instruccion=Serial.read();        //Se leen comandos desde el puerto     
                              
          if(instruccion == STOP){         //Si el primer byte es una S se sale del for.
            break;                  //Salir del for.
          }                         //Fin del if bi[0] == S.
      
          else if (instruccion == GET_POS) { // Get position called
            message = "Pos" + (String)posicionActual;
            Serial.println(message);                     
            posicionActual = 0;
          }
        }
            
        if(pasos_ejecutados <= pasos_totales){  //Si El numero de paso en el que va es menor al numero de pasos, se entra 
        // Comienza rutina de movimiento de motor bipolar      
          if (motor == BIPOLAR){            
            /*Serial.print("Paso bipolar: ");
            Serial.println(pasos_ejecutados);*/
            if (direccion == IZQUIERDA){        //Byte para saber en que sentido girara
              d++;                  //Contador para saber en que bobina se encuentra.
              if(d == 5){           //Se entra cuando la bobina dice que se active la 5.
                d=1;                //Como no hay bobina 5 se regresa a a la 1.
              }                     //Fin de el if c == 5.
            }                       //Fin del if b[0] == 0. 
        
            if (direccion == DERECHA){       //Bite para saber en que sentido girara
              d--;               //Contador para saber en que bobina se encuentra.
              if(d == 0){          //Se entra cuando la bobina dice que se active la 0.
                d=4;               //Como no hay bobina 0 se regresa a a la 4.
              }                    //Fin de el if c == 0.              
            }                      //Fin del if b[0] == 1. 
            co_bb();              //Se manda a llamar para activar la bobinas.           
          }                        //Fin del if m <= ptu.        
      
        // Comienza rutina de movimiento de motor unipolar      
          if (motor == UNIPOLAR){           
            if (direccion == IZQUIERDA){        //Bite para saber en que sentido girara
              c++;                //Contador para saber en que bobina se encuentra.
              if(c == 5){           //Se entra cuando la bobina dice que se active la 5.
                c=1;                //Como no hay bobina 5 se regresa a a la 1.
              }                     //Fin de el if d == 5.             
            }                       //Fin del if b[1] == 0.
            if (direccion == DERECHA){        //Bite para saber en que sentido girara
              c--;                //Contador para saber en que bobina se encuentra.
              if(c == 0){           //Se entra cuando la bobina dice que se active la 0.
                c=4;                //Como no hay bobina 0 se regresa a a la 4.
              }                     //Fin de el if d == 0.    
            }                       //Fin del if b[1] == 1.
            co_bu();              //Se manda a llamar para activar la bobinas.      
          }            
        }                                   
        delay((int)time_delay);   //Tiempo de espera de cada paso del bit de velocidad. 
           
        pasos_ejecutados++;
        posicionActual++;
      }                                    // Fin del ciclo for para el numero de pasos   

      bu_0();                              //Se mandan apagar las bobinas del bipolar.
      bb_0();                              //Se mandan apagar las bobinas del unipolar.      

      message = "Pos" + (String)posicionActual;
      Serial.print(message + "\n");                      // Actualizar posicion final al puerto                
      delay(50);
      Serial.println("fin"); Serial.flush();                 //Se manda el caracter para apagar el indicador de que los motores ya no se moveran.
      delay(50);                           //Tiempo de espera para estabilizar el puerto 
                                                 
    }                                    // Fin de rutina de motor 
  }                                      //Fin del if de la interrupcion del puerto serial.  
}                                        // Fin del loop

void co_bu(){          //Inicio de void para hacer las comparaciones en que bobinas se encuentra.
  //Serial.print("Llamadas unipolar: ");
  //Serial.println(m2);
  if (tipo == HALF){     //Saber si es paso con este bit.
    if ( c == 1 ){     //Si contador c es igual a 1 entra.
      bu_1();          //Manda a llamar para prender el paso 1.
    }                  //Fin del if c == 1.
    if ( c == 2 ){     //Si contador c es igual a 2 entra.
      bu_2();          //Manda a llamar para prender el paso 2.
      
    }                  //Fin del if c == 2.
    if ( c == 3 ){     //Si contador c es igual a 3 entra.
      bu_3();          //Manda a llamar para prender el paso 3.
      
    }                  //Fin del if c == 3. 
    if ( c == 4 ){     //Si contador c es igual a 4 entra.
      bu_4();          //Manda a llamar para prender el paso 4.
    }                  //Fin del if c == 4.
  }                    //Fin del if bi[9] == 0. 
  if (tipo == FULL){     //saber si es medio paso con este bit.
    if ( c == 1 ){     //Si contador c es igual a 1 entra.
      bu_11();         //Manda a llamar para prender el medio paso 1.
    }                  //Fin del if c == 1.
    if ( c == 2 ){     //Si contador c es igual a 2 entra.
      bu_22();         //Manda a llamar para prender el medio paso 2
      
    }                  //Fin del if c == 2.
    if ( c == 3 ){     //Si contador c es igual a 3 entra.
      bu_33();         //Manda a llamar para prender el medio paso 3.
      
    }                  //Fin del if c == 3.
    if ( c == 4 ){     //Si contador c es igual a 4 entra.
      bu_44();         //Manda a llamar para prender el medio paso 4.
      
    }                  //Fin del if c == 4.
  }                    //Fin del if bi[9] == 1.     
}                      //Fin del void co_bu

void co_bb(){          //Inicio de void para hacer las comparaciones en que bobinas se encuentra.
  //Serial.print("Llamadas bipolar: ");
  //Serial.println(m);
  if (tipo == HALF){     //Saber si es paso con este bit.
    if ( d == 1 ){     //Si contador d es igual a 1 entra.
      bb_1();          //Manda a llamar para prender el paso 1.
    }                  //Fin del if d == 1.
    if ( d == 2 ){     //Si contador d es igual a 2 entra.
      bb_2();          //Manda a llamar para prender el paso 2.
    }                  //Fin del if d == 2.
    if ( d == 3 ){     //Si contador d es igual a 3 entra.
      bb_3();          //Manda a llamar para prender el paso 3.
     }                 //Fin del if d == 3.
    if ( d == 4 ){     //Si contador d es igual a 4 entra. 
      bb_4();          //Manda a llamar para prender el paso 4.
    }                  //Fin del if d == 4.  
  } 
  if (tipo == FULL){     //Saber si es medio paso con este bit.
    if ( d == 1 ){     //Si contador d es igual a 1 entra.
      bb_11();         //Manda a llamar para prender el medio paso 1.
    }                  //Fin del if d == 1.
    if ( d == 2 ){     //Si contador d es igual a 2 entra.
      bb_22();         //Manda a llamar para prender el medio paso 1.
      //bb_44();
    }                  //Fin del if d == 2.
    if ( d == 3 ){     //Si contador d es igual a 3 entra.
      bb_33();         //Manda a llamar para prender el medio paso 1. 
      
    }                  //Fin del if d == 3.  
    if ( d == 4 ){     //Si contador d es igual a 4 entra.
      bb_44();         //Manda a llamar para prender el medio paso 1.
    }                  //Fin del if d == 4.
  }                    //Fin del if bi[9] == 1.   
}                      //Fin del void co_bb.
void bu_0() {                 //Entra si se llamo para saber que salidas digitales prender o apagar apagar bobinas.  
  digitalWrite(uni[0],LOW);   //Se manda apagar la bobinas.
  digitalWrite(uni[1],LOW);   //Se manda apagar la bobinas.
  digitalWrite(uni[2],LOW);   //Se manda apagar la bobinas.
  digitalWrite(uni[3],LOW);   //Se manda apagar la bobinas.
  //Serial.println(0000);
}                             //fin del void.
void bu_1() {                 //Entra si se llamo para saber que salidas digitales prender o apagar medio paso.
  digitalWrite(uni[0],HIGH);  //Se manda prender la bobinas.
  digitalWrite(uni[1],LOW);   //Se manda apagar la bobinas.
  digitalWrite(uni[2],HIGH);  //Se manda prender la bobinas.
  digitalWrite(uni[3],LOW);   //Se manda apagar la bobinas.
  //Serial.println(1010);
}                             //fin del void. 
void bu_2() {                 //Entra si se llamo para saber que salidas digitales prender o apagar medio paso.
  digitalWrite(uni[0],LOW);   //Se manda apagar la bobinas.
  digitalWrite(uni[1],HIGH);  //Se manda prender la bobinas.
  digitalWrite(uni[2],HIGH);  //Se manda prender la bobinas.
  digitalWrite(uni[3],LOW);   //Se manda apagar la bobinas.
  //Serial.println(1001);
}                             //fin del void. 
void bu_3() {                 //Entra si se llamo para saber que salidas digitales prender o apagar medio paso.
  digitalWrite(uni[0],LOW);   //Se manda apagar la bobinas.
  digitalWrite(uni[1],HIGH);  //Se manda prender la bobinas.
  digitalWrite(uni[2],LOW);   //Se manda apagar la bobinas.
  digitalWrite(uni[3],HIGH);  //Se manda prender la bobinas.
  //Serial.println(0101);
}                             //fin del void.
void bu_4() {                 //Entra si se llamo para saber que salidas digitales prender o apagar medio paso.
  digitalWrite(uni[0],HIGH);  //Se manda prender la bobinas.
  digitalWrite(uni[1],LOW);   //Se manda apagar la bobinas.
  digitalWrite(uni[2],LOW);   //Se manda apagar la bobinas. 
  digitalWrite(uni[3],HIGH);  //Se manda prender la bobinas.
  //Serial.println(1001);
}                             //fin del void.
void bu_11() {                //Entra si se llamo para saber que salidas digitales prender o apagar paso completo.
  digitalWrite(uni[0],HIGH);  //Se manda prender la bobinas. 
  digitalWrite(uni[1],LOW);   //Se manda apagar la bobinas.
  digitalWrite(uni[2],LOW);   //Se manda apagar la bobinas.
  digitalWrite(uni[3],LOW);   //Se manda apagar la bobinas .
}                             //fin del void.
void bu_22() {                //Entra si se llamo para saber que salidas digitales prender o apagar paso completo.
  digitalWrite(uni[0],LOW);   //Se manda apagar la bobinas.
  digitalWrite(uni[1],LOW);   //Se manda apagar la bobinas.
  digitalWrite(uni[2],HIGH);  //Se manda prender la bobinas.
  digitalWrite(uni[3],LOW);   //Se manda apagar la bobinas.
}                             //fin del void.
void bu_33() {                //Entra si se llamo para saber que salidas digitales prender o apagar paso completo.
  digitalWrite(uni[0],LOW);   //Se manda apagar la bobinas.
  digitalWrite(uni[1],HIGH);  //Se manda prender la bobinas.
  digitalWrite(uni[2],LOW);   //Se manda apagar la bobinas.
  digitalWrite(uni[3],LOW);   //Se manda apagar la bobinas.
}                             //fin del void.
void bu_44() {                //Entra si se llamo para saber que salidas digitales prender o apagar paso completo.
  digitalWrite(uni[0],LOW);   //Se manda apagar la bobinas.
  digitalWrite(uni[1],LOW);   //Se manda apagar la bobinas.
  digitalWrite(uni[2],LOW);   //Se manda apagar la bobinas.
  digitalWrite(uni[3],HIGH);  //Se manda prender la bobinas.
}                             //fin del void. 
void bb_0() {                 //Entra si se llamo para saber que salidas digitales prender o apagar apagar bobinas.
  digitalWrite(bip[0],LOW);   //Se manda apagar la bobinas.
  digitalWrite(bip[1],LOW);   //Se manda apagar la bobinas.
  digitalWrite(bip[2],LOW);   //Se manda apagar la bobinas.
  digitalWrite(bip[3],LOW);   //Se manda apagar la bobinas.
}                             //fin del void.
void bb_1() {                 //Entra si se llamo para saber que salidas digitales prender o apagar medio paso.
  digitalWrite(bip[0],HIGH);  //Se manda prender la bobinas.
  digitalWrite(bip[1],LOW);   //Se manda apagar la bobinas.
  digitalWrite(bip[2],LOW);   //Se manda apagar la bobinas.
  digitalWrite(bip[3],LOW);   //Se manda apagar la bobinas.
}                             //fin del void.
void bb_2() {                 //Entra si se llamo para saber que salidas digitales prender o apagar medio paso.
  digitalWrite(bip[0],LOW);   //Se manda apagar la bobinas.
  digitalWrite(bip[1],LOW);   //Se manda apagar la bobinas.
  digitalWrite(bip[2],HIGH);  //Se manda prender la bobinas.
  digitalWrite(bip[3],LOW);   //Se manda apagar la bobinas.
}                             //fin del void. 
void bb_3() {                 //Entra si se llamo para saber que salidas digitales prender o apagar medio paso.
  digitalWrite(bip[0],LOW);   //Se manda apagar la bobinas.
  digitalWrite(bip[1],HIGH);  //Se manda prender la bobinas.
  digitalWrite(bip[2],LOW);   //Se manda apagar la bobinas.
  digitalWrite(bip[3],LOW);   //Se manda apagar la bobinas .
}                             //fin del void.
void bb_4() {                 //Entra si se llamo para saber que salidas digitales prender o apagar medio paso.
  digitalWrite(bip[0],LOW);   //Se manda apagar la bobinas.
  digitalWrite(bip[1],LOW);   //Se manda apagar la bobinas.
  digitalWrite(bip[2],LOW);   //Se manda apagar la bobinas.
  digitalWrite(bip[3],HIGH);  //Se manda prender la bobinas.
}                             //fin del void.   
void bb_11() {                //Entra si se llamo para saber que salidas digitales prender o apagar paso completo. 
  digitalWrite(bip[0],HIGH);  //Se manda prender la bobinas.
  digitalWrite(bip[1],LOW);   //Se manda apagar la bobinas.
  digitalWrite(bip[2],HIGH);  //Se manda prender la bobinas.
  digitalWrite(bip[3],LOW);   //Se manda apagar la bobinas.
}                             //fin del void. 
void bb_22() {                //Entra si se llamo para saber que salidas digitales prender o apagar paso completo.
  digitalWrite(bip[0],LOW);   //Se manda apagar la bobinas.
  digitalWrite(bip[1],HIGH);  //Se manda prender la bobinas.
  digitalWrite(bip[2],HIGH);  //Se manda prender la bobinas.
  digitalWrite(bip[3],LOW);   //Se manda apagar la bobinas.
}                             //fin del void.
void bb_33() {                //Entra si se llamo para saber que salidas digitales prender o apagar paso completo.
  digitalWrite(bip[0],LOW);   //Se manda apagar la bobinas.
  digitalWrite(bip[1],HIGH);  //Se manda prender la bobinas.
  digitalWrite(bip[2],LOW);   //Se manda apagar la bobinas.
  digitalWrite(bip[3],HIGH);  //Se manda prender la bobinas.
}                             //fin del void.
void bb_44() {                //Entra si se llamo para saber que salidas digitales prender o apagar paso completo. 
  digitalWrite(bip[0],HIGH);  //Se manda prender la bobinas.
  digitalWrite(bip[1],LOW);   //Se manda apagar la bobinas.
  digitalWrite(bip[2],LOW);   //Se manda apagar la bobinas.
  digitalWrite(bip[3],HIGH);  //Se manda prender la bobinas.
}                             //fin del void.
