int potentiometerVal=0;
void setup()
{
  Serial.begin(9600); //Starting the potentiometer
}

void loop()
{
  potentiometerVal = analogRead(A0);; // Reading the value from the analog pin A0
  Serial.print("The value of the potentiometer read is:"); 
  Serial.println(potentiometerVal); 
  delay(180); 
}