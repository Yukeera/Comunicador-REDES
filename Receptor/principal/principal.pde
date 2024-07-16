import processing.sound.*;
AudioIn inputMic;
FFT fft;
AudioProcess AudioProcess = new AudioProcess();
ListValues lists = new ListValues();
TextField textFieldMsg = new TextField(50,70, "MENSAGEM: ");
TextField debugFreq = new TextField(50,250, "MAINFREQ: ");
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
 textFieldMsg.displayText();
 AudioProcess.checkFreqInit();
 buttons.buttonCreate(50,140,100,50,"Limpar");
 AudioProcess.displayDebugFreq();
 
 
}

void mousePressed (){
 if (mouseX >= 50 && mouseX <= 50 + 100 && mouseY >= 140 && mouseY <= 140 + 50){
   textFieldMsg.cleanText();
 }
}
