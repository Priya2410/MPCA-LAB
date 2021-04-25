int trigger = 12; //Port number for trigger
int echo = 11; //Port number for echo
int inch; // Distance in inches
int cm; // Distance in centimeter

//Used to calculate time taken to strike the object and come back
//Here we initiate signals 
int distance(int triggerPin, int echoPin)
{
  pinMode(triggerPin,OUTPUT);
  digitalWrite(triggerPin, LOW); //setting trigger port to 0;
  delayMicroseconds(2); //wait for 2 micro sec
  digitalWrite(triggerPin, HIGH); //setting trigger port to 1;
  delayMicroseconds(10); //wait for 10 micro sec
  digitalWrite(triggerPin, LOW);
  
  pinMode(echoPin,INPUT);
  return pulseIn(echo,HIGH);
}

void setup()
{
  Serial.begin(9600);
}

void loop()
{
  cm=0.01723 * distance(trigger,echo);  
  inch=cm/2.54;
  Serial.print("Distance in centimeter=");
  Serial.println(cm);
  Serial.print("Distance in inch=");
  Serial.println(inch);
  delay(100);
}