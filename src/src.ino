String incomingByte; // variável para o dado recebido

void setup() {
  Serial.begin(9600); // abre a porta serial, configura a taxa de transferência para 9600 bps
}

void loop() {
  // apenas responde quando dados são recebidos:
  if (Serial.available() > 0) {
    // lê do buffer o dado recebido:
    incomingByte = Serial.readString();

    // responde com o dado recebido:
    Serial.print("I received: ");
    Serial.print(incomingByte);

    delay(2000);
  }
}