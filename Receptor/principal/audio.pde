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
  
  
  AudioProcess() { //construtor
    total = 0;
    contagem = 0;
    freqContando = false;
  }
  
  float freqCalc (){ //calcula a frequencia predominante no AudioInput
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

  float mainFreq (){ //faz a media das frequencias predominates durante um segundo de contagem
    startWait = millis();
    freqContando = true;
    while (freqContando == true){
      if(millis() - startWait < 1000){
        total += freqCalc();
        contagem++;
        fft.analyze();
      }
      else{
        media = total / contagem;
        total = 0;
        contagem = 0;
        freqContando = false;
      }
     
    }
    return media;
      
  }

  void checkFreqInit() { //checa se houve incio de transmissão 
    float tempFreq = mainFreq();
    if (tempFreq > 4900 && tempFreq < 5100){
      wait = true;
      startWait = millis();
      while(wait == true){
        if(millis() - startWait >= 1000){
          wait = false;
          //readTransmission();
        }
      }
      
    }
  }
  
  //void readTransmission(){ //leitura das frequencias 
  //  if(mainfreq()
    
    
  //}
  
  
  
}
