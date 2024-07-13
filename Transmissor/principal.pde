
Model model = new Model(this);
ArrayList<Quad> listQuad = new ArrayList<Quad>();
Quad enter = new Quad(100, 300, 50, "ENTER");
Fila fila = new Fila();
Quad quad = new Quad();
Retangulo spaceButton = new Retangulo();
TextField inputText = new TextField(80, 50, "Digite aqui:");

void setup() {
  size(720, 360);
  model.setupSounds();
  int posY = 80;
  int posX = 70;
  int size = 50;
  
  for (int i = 1; i < 27; i++) { // criação da lista com todas as teclas
    listQuad.add(new Quad(posX, posY, size, model.getAlphabet(i - 1)));
    posX = posX + 70;
    if (i % 8 == 0) {
      posY = posY + 70;
      posX = 70;
    }

  }
}

void draw() {
  background(67, 69, 69);
  inputText.backgroundDisplay();
  inputText.displayText();
  for (Quad quad : listQuad) { // mostrando as teclas na tela
    quad.displayQuad(quad);
    quad.updateColor();
  }
  model.reta("ENVIAR");
  model.updateRectColor();
  spaceButton.createRect(210.0, 290.0, 330.0, 50.0);
  spaceButton.updateColor();
  
  
}

void mousePressed() { // se mouse for clicado
  for (int i = 0; i < listQuad.size(); i++) {
    Quad quad = listQuad.get(i);
    if (quad.isMouseOver(quad)) {
      quad.clickButton();
      fila.adicionar(i);
      if(inputText.getText() == "Digite aqui:"){
        inputText.setText("");
      }
      inputText.setText(inputText.getText() + model.getAlphabet(i));
    }
  }

  if (mouseX > model.getRectX() && mouseX < model.getRectX() + model.getRectSize() && mouseY > model.getRectY() && mouseY < model.getRectY() + model.getRectSize() / 2) {
    model.setRectColor();
    fila.submit();
    inputText.setText("Digite aqui:");
  }
  if (mouseX > spaceButton.getX() && mouseX < spaceButton.getX() + spaceButton.getLargura() && mouseY > spaceButton.getY() && mouseY < spaceButton.getY() + spaceButton.getAltura() ) {
    spaceButton.clickButton();
    if(inputText.getText() == "Digite aqui:"){
        inputText.setText("");
     }
    inputText.setText(inputText.getText() + " ");
    fila.adicionar(26);
  }
}
