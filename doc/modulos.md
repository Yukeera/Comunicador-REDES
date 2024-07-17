## Documentação dos modulos 

### Principal (transmissor)

- Inicialização dos Objetos:

 Primeiro, criamos um objeto Model e inicializamos uma lista chamada listQuad para
 armazenar as teclas do teclado virtual. Também definimos alguns objetos auxiliares como
 Quad e Retangulo para representar as teclas, o botão de espaço e o botão de backspace.
 Além disso, criamos um campo de texto chamado inputText.

 - Configuração Inicial:

 No método setup, definimos o tamanho da janela e configuramos os sons do modelo. Em
 seguida, inicializamos a lista listQuad com as teclas, posicionando-as em uma grade.
 Desenho dos Elementos:
 No método draw, desenhamos o fundo, o campo de texto, todas as teclas e o botão de
 espaço. Cada tecla é exibida e sua cor é atualizada.

 - Interação com o Mouse:

 Ométodo mousePressed lida com os cliques do mouse. Quando uma tecla é clicada, o
 texto correspondente é adicionado ao campo de texto. Também permite enviar o texto ou
 adicionar espaços e backspaces. Ele pega o índice do botão clicado na lista e coloca na fila,
 que equivale à lista de letras no alfabeto, e o clickbutton muda a cor quando clicado para
 proporcionar o feedback adequado. A mesma lógica serve para quando se digita no teclado,
 com a diferença de que se usa o keyPressed, que faz a verificação se algo foi apertado no
 teclado.

 - Lógica do Backspace:

 Para criar esse botão, utiliza-se a função substring para extrair uma parte de uma string e o
 length-1 para apagar o último elemento. Dessa forma, sempre que o botão for clicado, ele
 apagará a última letra digitada.

 ### Retângulo (transmissor)

 A classe Retangulo representa um botão retangular no teclado virtual, sendo responsável
 por sua inicialização, exibição e interação. 
 
 Cada instância da classe possui atributos como
 as coordenadas x e y do canto superior esquerdo do retângulo, largura e altura que
 determinam o tamanho do retângulo, e text que representa o texto exibido dentro do botão.
 Além disso, há duas cores definidas: 

 - colorClick, que é a cor do botão quando clicado, e
 - colorButton, que mantém a cor atual do botão. 
 
 O atributo lastClickTime armazena o tempo
 (em milissegundos) do último clique, permitindo o controle da mudança de cor.
 Para inicializar um botão retangular, existem dois construtores: um padrão que define as
 cores padrão, e outro que permite definir a cor inicial do botão. 
 
 A criação e exibição do retângulo na tela são gerenciadas pelos métodos createRect(float x, float y, float largura, float altura, String text) e createRect(float x, float y, float largura, float altura). O primeiro
 método desenha o retângulo na posição especificada e exibe o texto no centro, enquanto o
 segundo método desenha apenas o retângulo sem texto.

 Além disso a classe também possui métodos getX(), getY(), getLargura() e getAltura() que retornam as coordenadas, largura e altura do retângulo, respectivamente.

Dessa forma, a interação com o botão é gerenciada pelo método clickButton(), que muda a cor do botão
 para colorClick e registra o tempo do clique. Para garantir que o botão retorne à sua cor
 original após um breve período, o método updateColor() é utilizado, restaurando a cor
 padrão se mais de 300 milissegundos se passaram desde o último clique.

 Assim, a classe Retangulo encapsula a funcionalidade de um botão retangular do teclado
 virtual, permitindo sua inicialização, exibição e interação de maneira eficiente e visualmente
 responsiva.

 Em resumo a classe Retangulo define a estrutura e o comportamento de um botão retangular no
 teclado virtual. Ela permite inicializar o botão com suas coordenadas, tamanho e texto. O
 botão pode ser exibido na tela, mudar de cor ao ser clicado e retornar à sua cor original
 após um curto período.