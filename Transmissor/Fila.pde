
class Fila{
  
  ArrayList<Integer> fila;
  
 Fila(){
  fila = new ArrayList <Integer>(); 
 }
  
  public void adicionar(int valor){
    fila.add(valor);
  }
  
  public void remover(int valor){
    fila.remove(valor);
  }
  
  public void submit (){
    fila.add(0, 28);
    fila.add(29);
    for(int i = 0 ; i < fila.size();i++){
      if(i == 0){
        model.tocar(fila.get(i));
      }
      else{
        delay(500);
        model.tocar(fila.get(i));
      }
      
    }
    fila.clear();
  }
  
  public int getSize(){
    return fila.size();
  }
  
  
}
