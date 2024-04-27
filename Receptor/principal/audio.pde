class AudioProcess {
  
  float maxAmplitude;
  int maxIndex;
  float frequenciaPredominante;
  boolean wait;
  int startWait;
  int total;
  int contagem;
  float media;
  boolean freqContando;
  float tempFreq;
  boolean readTransmission;
  String lastLetter;

  AudioProcess() { //construtor
    total = 0;
    contagem = 0;
    freqContando = false;
  }

  float freqCalc () { //calcula a frequencia predominante no AudioInput
    maxAmplitude = 0;
    maxIndex = 0;
    for (int i = 0; i < bands; ++i) {
      if (espectro[i] > maxAmplitude) {
        maxAmplitude = espectro[i];
        maxIndex = i;
      }
    }
    return maxIndex * 44100 / (2 * bands);
  }

  float mainFreq () { //faz a media das frequencias predominates durante um segundo de contagem
    startWait = millis();
    freqContando = true;
    float maior = 0;
    float temp;
    
    while (freqContando == true) {
      //if (millis() - startWait < 1000) {
      //  total += freqCalc();
      //  contagem++;
      //  fft.analyze();
      //} else {
      //  media = total / contagem;
      //  total = 0;
      //  contagem = 0;
      //  freqContando = false;
      //}
      
      temp = freqCalc();
      if (millis() - startWait < 2000) {
        if(maior < temp){
          maior = temp; 
        } 
        fft.analyze(espectro);
        
      } else {
        freqContando = false;
      }
    }
    return maior;
    
  }

  void displayDebugFreq() {
    debugFreq.setText("MAINFREQ :" + tempFreq + "HZ");
    debugFreq.displayText();
  }

  void checkFreqInit() { //checa se houve incio de transmissão
    if (readTransmission == false) {
      tempFreq = freqCalc();
      if (tempFreq > 4900 && tempFreq < 5100) {
        textFieldMsg.setColor(color(0, 255, 0));
        readTransmission = true;
        lastLetter = "";
      } 
      
    }
    else if(readTransmission == true) {
          tempFreq = freqCalc();
          readTransmission();
          if (tempFreq > 5900 && tempFreq < 6100) {
            textFieldMsg.setColor(color(255));
            readTransmission = false;
          }
    }
  }

  void readTransmission(){ //leitura das frequencias
    //tempFreq = freqCalc();
    
    for (int i = 0; i < 26 ; i++){
      if(tempFreq >= lists.getValue(i) && tempFreq <= lists.getValue(i) + 99){
        if(lastLetter != lists.getAlphabet(i)){
          textFieldMsg.setText(textFieldMsg.getText() + lists.getAlphabet(i));
          lastLetter = lists.getAlphabet(i);
        }
      }
    
    }
    
  }
}
