class ListValues {
 String alphabet[] = new String[]{"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"," "};  //lista de letras
 int testValues[] = new int[]{351,451,551,651,751,851,951,1051,1151,1251,1351,1451,1551,1651,1751,1851,1951,2051,2151,2251,2351,2451,2551,2651,2751,2851,3451,9951}; //lista de frequencias
  
  String getAlphabet(int indice){ //retorna a letra baseada no indice
    return alphabet[indice];
  }
  
  int getValue(int indice){ //retorna a frequencia baseada no indice
    return testValues[indice];
  }
}
