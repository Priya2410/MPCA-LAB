int buzzer=7;
void setup()
{
  pinMode(buzzer, OUTPUT);
}

void loop()
{
  tone(buzzer,220,100);
  delay(1000);
}