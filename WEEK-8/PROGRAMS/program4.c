int sensorState = 0;
int sensor = 2;
int led=13;
void setup()
{
  pinMode(sensor, INPUT);
  pinMode(led, OUTPUT); 
  Serial.begin(9600);

}

void loop()
{
  // Read the state of the PIR sensor/digital input
  sensorState = digitalRead(sensor); //Read from digital pin 2
  // check if sensor pin is HIGH. if it is, set the LED on.
  if (sensorState == HIGH)
  {
    digitalWrite(led, HIGH);
    Serial.println("PIR Sensor activated");
  }
  else
  {
    digitalWrite(led, LOW);
  }
  delay(10); // Delay a little bit to improve simulation performance
}