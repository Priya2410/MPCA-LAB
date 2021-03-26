int blueled=13; //Declaring the port blue led is connected to
int redled=8; //Declaring the port red led is connected to

int delay_time=1000;  // Setting the delay time
int flag=1; // To alternatively run blue led and red led

void setup()
{
  pinMode(blueled,OUTPUT); // Setting blueled as output 
  pinMode(redled,OUTPUT);  // Setting redled as output 
}

void loop()
{
  if(flag==1)  // To glow blueled
  {
    digitalWrite(blueled, HIGH);
  	digitalWrite(redled, LOW);
    flag=0;
  }
  else // To glow redled
  {
    digitalWrite(redled, HIGH);
  	digitalWrite(blueled, LOW);
    flag=1;
  }
  delay(delay_time); //Wait for 1000 ms
}