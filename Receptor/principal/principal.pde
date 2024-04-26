import processing.sound.*;
AudioIn inputMic;
FFT fft;
AudioProcess AudioProcess = new AudioProcess();
TextField textFieldMsg = new TextField(50,70);
ButtonR buttons = new ButtonR();

int bands = 1024;
float espectro[] = new float[bands];


void setup(){
 size(720,360);
 inputMic = new AudioIn(this,0);
 fft = new FFT (this, 1024);
 inputMic.start();
 fft.input(inputMic);
 
}

void draw(){
  
 background(67, 69, 69);
 fft.analyze(espectro);
 AudioProcess.checkFreqInit();
 textFieldMsg.displayText();
 buttons.buttonCreate(50,140,100,50,"Limpar");
}
