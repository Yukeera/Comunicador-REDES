import processing.sound.*;
import processing.core.*;
class Model {
  
  PApplet parent;
  SoundFile letterA; SoundFile letterB; SoundFile letterC; SoundFile letterD; SoundFile letterE; SoundFile letterF; SoundFile letterG; SoundFile letterH; SoundFile letterI; SoundFile letterJ; SoundFile letterK; SoundFile letterL;
  SoundFile letterM; SoundFile letterN; SoundFile letterO; SoundFile letterP; SoundFile letterQ; SoundFile letterR; SoundFile letterS; SoundFile letterT; SoundFile letterU; SoundFile letterV; SoundFile letterW; SoundFile letterX;
  SoundFile letterY; SoundFile letterZ; //declaração das variaveis sound
  
  float rectX = 600; float rectY = 300 ; float rectSize = 100; color rectColorClick = color(255,255,35);
  
  
  
  SoundFile listSounds[];
 
  Model(PApplet p){ //construtor
    parent = p;
    
  }
  
  void setupSounds() { //inicialização dos sons
    try {
        letterA = new SoundFile(parent, "/sounds/100hz.mp3");
        letterB = new SoundFile(parent, "/sounds/200hz.mp3");
        letterC = new SoundFile(parent, "/sounds/400hz.mp3");
        listSounds = new SoundFile[]{letterA, letterB, letterC};
    } catch (Exception e) {
        e.printStackTrace();
    }
}
  
  void tocar(int indice){ //tocando os sons
    listSounds[indice].play();
  }
  
  
  String alphabet[] = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q", "r", "s", "t", "u", "v", "x", "y", "z"};
  String getAlphabet(int indice){ //retorna a letra do do quad
    return alphabet[indice];
  }
 
 void reta(){
   
   fill(rectColorClick);
   rect(rectX,rectY,rectSize,rectSize/2);
   fill(0);
   text("ENTER", rectX + 35,  rectY + 30);
 
 }
 
 void setRectX(float rectX){
  this.rectX = rectX;
 }
 
 void setRectY(float rectY){
  this.rectY = rectY;
 }
 
 void setRectColor(){
   rectColorClick = color(240,100,200);
   
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
