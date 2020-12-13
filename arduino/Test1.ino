//Arduno code for MLX90614 IR Temperature Sensor using Arduino Nano Board to use in Android Application

#include <Wire.h>
#include <Adafruit_MLX90614.h>

Adafruit_MLX90614 mlx = Adafruit_MLX90614();

int data = 0;
unsigned long preTime;
int time_diff = 100;
char i;

void setup() {
    Serial.begin(9600);
    mlx.begin(); 
}

void loop() {
    if (Serial.available() > 0) {
        i = Serial.read();
        switch (i) {
            case '0':
                data = 0;
                break;
            case '1':
                data = 1;
                break;
        }
    }
  if (data==1) {
      if (millis() - preTime >= time_diff) {
          Serial.print(mlx.readAmbientTempC()); 
          Serial.print(";");
          Serial.println(mlx.readObjectTempC());
          preTime = millis();
      }
  }
  else{
      Serial.println("Data not recieved");
  }
}
