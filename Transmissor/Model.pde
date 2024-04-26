import processing.sound.*;
import processing.core.*;
class Model {
  
  PApplet parent;
  SoundFile letterA; SoundFile letterB; SoundFile letterC; SoundFile letterD; SoundFile letterE; SoundFile letterF; SoundFile letterG; SoundFile letterH; SoundFile letterI; SoundFile letterJ; SoundFile letterK; SoundFile letterL;
  SoundFile letterM; SoundFile letterN; SoundFile letterO; SoundFile letterP; SoundFile letterQ; SoundFile letterR; SoundFile letterS; SoundFile letterT; SoundFile letterU; SoundFile letterV; SoundFile letterW; SoundFile letterX;
  SoundFile letterY; SoundFile letterZ; //declaração das variaveis sound
  
  color colorButton = color(227, 227, 227);
  int lastClickTime = 0;
  
  float rectX = 600; float rectY = 300 ; float rectSize = 100;
  
  
  
  public SoundFile listSounds[];
 
  Model(PApplet p){ //construtor
    parent = p;
    
  }
  
  void setupSounds() { //inicialização dos sons
    try {
        letterA = new SoundFile(parent, "/sounds/100hz.wav");
        letterB = new SoundFile(parent, "/sounds/200hz.wav");
        letterC = new SoundFile(parent, "/sounds/300hz.wav");
        letterD = new SoundFile(parent, "/sounds/400hz.wav");
        letterE = new SoundFile(parent, "/sounds/500hz.wav");
        letterF = new SoundFile(parent, "/sounds/600hz.wav");
        letterG = new SoundFile(parent, "/sounds/700hz.wav");
        letterH = new SoundFile(parent, "/sounds/800hz.wav");
        letterI = new SoundFile(parent, "/sounds/900hz.wav");
        letterJ = new SoundFile(parent, "/sounds/1000hz.wav");
        letterK = new SoundFile(parent, "/sounds/1100hz.wav");
        letterL = new SoundFile(parent, "/sounds/1200hz.wav");
        letterM = new SoundFile(parent, "/sounds/1300hz.wav");
        letterN = new SoundFile(parent, "/sounds/1400hz.wav");
        letterO = new SoundFile(parent, "/sounds/1500hz.wav");
        letterP = new SoundFile(parent, "/sounds/1600hz.wav");
        letterQ = new SoundFile(parent, "/sounds/1700hz.wav");
        letterR = new SoundFile(parent, "/sounds/1800hz.wav");
        letterS = new SoundFile(parent, "/sounds/1900hz.wav");
        letterT = new SoundFile(parent, "/sounds/2000hz.wav");
        letterU = new SoundFile(parent, "/sounds/2100hz.wav");
        letterV = new SoundFile(parent, "/sounds/2200hz.wav");
        letterW = new SoundFile(parent, "/sounds/2300hz.wav");
        letterX = new SoundFile(parent, "/sounds/2400hz.wav");
        letterY = new SoundFile(parent, "/sounds/2500hz.wav");
        letterZ = new SoundFile(parent, "/sounds/2600hz.wav");
      
        listSounds = new SoundFile[]{letterA, letterB, letterC,letterD, letterE, letterF,letterG, letterH, letterI,letterJ, letterK, letterL,letterM, letterN, letterO,letterP, letterQ, letterR,letterS, letterT, letterU,letterV, letterW, letterX,letterY, letterZ};
    } catch (Exception e) {
        e.printStackTrace();
    }
}
  
  void tocar(int indice){ //tocando os sons
    listSounds[indice].playFor(1);
    
  }
  
  
  String alphabet[] = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q", "r", "s", "t", "u", "v", "x", "y", "z"};
  String getAlphabet(int indice){ //retorna a letra do do quad
    return alphabet[indice];
  }
 
 void reta(String text){ //criação de retangulo
   
   fill(colorButton);
   rect(rectX,rectY,rectSize,rectSize/2);
   fill(0);
   text(text, rectX + 35,  rectY + 30);
 
 }
 
 void setRectX(float rectX){
  this.rectX = rectX;
 }
 
 void setRectY(float rectY){
  this.rectY = rectY;
 }
 
 void setRectColor(){
   //if(rectColorClick == color(240,100,200)){
   //  rectColorClick = color(255,255,35);
   //}
   //else{
   //  rectColorClick = color(240,100,200); 
   //}
   lastClickTime = millis();
   colorButton = color(240,100,200);
   
 }
 
 void updateRectColor(){
   if (millis() - lastClickTime > 300) {
      colorButton = color(227, 227, 227);
    }
 }
 
 float getRectX(){
   return rectX;
 }
 float getRectY(){
   return rectY;
 }
  
 float getRectSize(){
   return rectSize;
 }

}
