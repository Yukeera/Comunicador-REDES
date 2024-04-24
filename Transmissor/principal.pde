Model model = new Model(this);
ArrayList<Quad> listQuad = new ArrayList<Quad>();
Quad enter = new Quad(100,300,50,"ENTER");


void setup() {
  size(720, 360);
  model.setupSounds();
  int posY = 50;
  int posX = 70;
  
  
  for (int i = 1; i < 26; i++) { //criação da lista com todas as teclas
    listQuad.add(new Quad(posX, posY, 50, model.getAlphabet(i-1)));
    posX = posX + 70;
    if(i % 8 == 0){
      posY = posY + 70;
      posX = 70;
    }
    
    
  }
}

void draw() {
  background(0, 0, 0);
  for (Quad quad : listQuad) { //mostrando as teclas na tela
    quad.displayQuad(quad);
    
  }
  model.reta();
 
}

void mousePressed() { //se mouse for clicado
  for (int i = 0; i < listQuad.size(); i++) {
    Quad quad = listQuad.get(i);
    if (quad.isMouseOver(quad)) {
      quad.clickButton();
      model.tocar(i);
     
    }
  }
  
  if(mouseX > model.getRectX() && mouseX< model.getRectX() + model.getRectSize() && mouseY > model.getRectY() && mouseY < model.getRectY() - model.getRectSize()/2){
    
  }
}
