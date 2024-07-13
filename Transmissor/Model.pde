
import processing.sound.*;
import processing.core.*;
class Model {
  
  PApplet parent;
  SoundFile letterA; SoundFile letterB; SoundFile letterC; SoundFile letterD; SoundFile letterE; SoundFile letterF; SoundFile letterG; SoundFile letterH; SoundFile letterI; SoundFile letterJ; SoundFile letterK; SoundFile letterL;
  SoundFile letterM; SoundFile letterN; SoundFile letterO; SoundFile letterP; SoundFile letterQ; SoundFile letterR; SoundFile letterS; SoundFile letterT; SoundFile letterU; SoundFile letterV; SoundFile letterW; SoundFile letterX;
  SoundFile letterY; SoundFile letterZ; SoundFile readStart; SoundFile readEnd; SoundFile letterSpace; SoundFile letterEnd;//declaração das variaveis sound
  
  color colorButton = color(227, 227, 227);
  int lastClickTime = 0;
  
  float rectX = 540; float rectY = 24 ; float rectSize = 65;
  
  
  
  public SoundFile listSounds[];
 
  
   
  Model(PApplet p){ //construtor
    parent = p;
    
  }
  
  void setupSounds() { //inicialização dos sons
    try {
        letterA = new SoundFile(parent, "/sounds/400hz.wav"); //0
        letterB = new SoundFile(parent, "/sounds/500hz.wav"); //1
        letterC = new SoundFile(parent, "/sounds/600hz.wav"); //2
        letterD = new SoundFile(parent, "/sounds/700hz.wav"); //3
        letterE = new SoundFile(parent, "/sounds/800hz.wav"); //4
        letterF = new SoundFile(parent, "/sounds/900hz.wav"); //5
        letterG = new SoundFile(parent, "/sounds/1000hz.wav"); //6
        letterH = new SoundFile(parent, "/sounds/1100hz.wav"); //7
        letterI = new SoundFile(parent, "/sounds/1200hz.wav"); //8
        letterJ = new SoundFile(parent, "/sounds/1300hz.wav"); //9
        letterK = new SoundFile(parent, "/sounds/1400hz.wav"); //10
        letterL = new SoundFile(parent, "/sounds/1500hz.wav"); //11
        letterM = new SoundFile(parent, "/sounds/1600hz.wav"); //12
        letterN = new SoundFile(parent, "/sounds/1700hz.wav"); //13
        letterO = new SoundFile(parent, "/sounds/1800hz.wav"); //14
        letterP = new SoundFile(parent, "/sounds/1900hz.wav"); //15
        letterQ = new SoundFile(parent, "/sounds/2000hz.wav"); //16
        letterR = new SoundFile(parent, "/sounds/2100hz.wav"); //17
        letterS = new SoundFile(parent, "/sounds/2200hz.wav"); //18
        letterT = new SoundFile(parent, "/sounds/2300hz.wav"); //19
        letterU = new SoundFile(parent, "/sounds/2400hz.wav"); //20
        letterV = new SoundFile(parent, "/sounds/2500hz.wav"); //21
        letterW = new SoundFile(parent, "/sounds/2600hz.wav"); //22
        letterX = new SoundFile(parent, "/sounds/2700hz.wav"); //23
        letterY = new SoundFile(parent, "/sounds/2800hz.wav"); //24
        letterZ = new SoundFile(parent, "/sounds/2900hz.wav"); //25
        letterSpace= new SoundFile(parent, "/sounds/3500hz.wav"); //26
        letterEnd = new SoundFile(parent, "/sounds/4000hz.wav"); //27
        readStart = new SoundFile(parent, "/sounds/readStart.wav"); //28
        readEnd = new SoundFile(parent, "/sounds/readEnd.wav"); //29

      
        listSounds = new SoundFile[]{letterA, letterB, letterC,letterD, letterE, letterF,letterG, letterH, letterI , letterJ, letterK, letterL,letterM, letterN, letterO,letterP, letterQ, letterR,letterS, letterT, letterU,letterV, letterW, letterX,letterY, letterZ, letterSpace, letterEnd , readStart, readEnd};
    } catch (Exception e) {
        e.printStackTrace();
    }
}
  
  void tocar(int indice){ //tocando os sons
    listSounds[indice].playFor(1);
    
    //if (indice != 28 && indice != 29 ){
    //  delay(1000);
    //  listSounds[27].playFor(0.5);
    //}
    
  }
  
  
  String alphabet[] = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q", "r", "s", "t", "u", "v","w", "x", "y", "z"," "};
  String getAlphabet(int indice){ //retorna a letra do do quad
    return alphabet[indice];
  }
 
 void reta(String text){ //criação de retangulo
   
   fill(colorButton);
   rect(rectX,rectY,rectSize,rectSize/2);
   fill(0);
   text(text, rectX + 18,  rectY + 20);
 
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
      colorButton = color(8, 201, 60);
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
