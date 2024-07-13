class Fila{
  
  ArrayList<Integer> fila;
  
 Fila(){
  fila = new ArrayList <Integer>(); 
 }
  
  void adicionar(int valor){
    fila.add(valor);
  }
  
  void submit (){
    fila.add(0, 27);
    fila.add(28);
    for(int i = 0 ; i < fila.size();i++){
      if(i == 0){
        model.tocar(fila.get(i));
      }
      else{
        delay(1000);
        model.tocar(fila.get(i));
      }
      
    }
    fila.clear();
  }
  
  
  
}
