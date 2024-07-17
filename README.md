# Projeto da disciplina de Redes de computadores

### Sistema de comunicação entre dispositivos transmissor e receptor utilizando apenas som com múltiplos níveis de áudio
___

O projeto tem como objetivo realizar a comunicação entre dois dispositivos sem a utilização de uma rede de internet, para executar essa ação optamos por utilizar níveis de som para transmitir mensagens e assim realizar a comunicação dos computadores entre si. 

A estrutura do projeto foi dividida em dois módulos, um de transmissão de dados e outro de recepção dos mesmos. 
- O transmissor é encarregado de enviar uma mensagem codificada por meio de frequências sonoras através de um alto falante, essas frequências são pré definidas e cada um representa uma letra do alfabeto. 
- Já o receptor tem a função de captar esta mensagem codificada por meio de um microfone, realizando a leitura das frequências emitidas e fazendo a decodificação para converter estes dados em uma mensagem que posteriormente é exibida ao usuário final.

### Linguagem utilizada 
___

A linguagem de programação utilizada para desenvolver o projeto foi a Processing, devido a sua simplicidade e acessibilidade que permite uma boa curva de aprendizado. Além disso, possui bibliotecas de áudio já integradas, permitindo uma boa geração, manipulação e análise de dados sonoros em poucas linhas de código, o que facilitou o desenvolvimento do projeto. 

- A versão utilizada foi a 4.3
- Para otimização do projeto, foi utilizada a biblioteca Sounds

[Documentação Oficial da linguagem Processing](https://processing.org/reference)

[Documentação da Biblioteca Sounds](https://processing.org/reference/libraries/sound/index.html)

### Camadas do Modelo ISO/OSI
___

Em relação às camadas do modelo ISO/OSI, um breve mapeamento auxilia no entendimento dos aspectos da comunicação em cada etapa desse projeto. 

- Camada Física: é responsável pela geração e transmissão dos dados sonoros, nessa etapa os dispositivos físicos são o alto falante e o microfone. 

- Camada de Enlace: a comunicação direta é feita pelo som, o projeto não necessita de uma camada de enlace de dados complexa, no entanto para garantir a integridade de dados recebidos é recomendado um ambiente livre de ruídos. 

- Camada de Rede: não aplicável diretamente, pois não há roteamento e endereçamento de rede envolvido na comunicação direta através de som.

- Camada de Transporte e Sessão: tem a função de garantir a entrega correta dos dados além do início e término da comunicação, então foi adicionado ao código um protocolo responsável por iniciar e finalizar a leitura dos dados sonoros, esse processo foi feito com duas frequências distintas das frequências já pré-definidas para cada letra. 

- Camada de Apresentação: responsável por fazer o mapeamento de frequências sonoras para letras, decodificando as frequências e realizando assim a comunicação entre os dispositivos. 

- Camada de Aplicação: é a ponte entre o sistema e o usuário final, onde a mensagem decodificada é apresentada através da interface gráfica do Processing, apresentando a mensagem inicialmente enviada por outro usuário. 

### Transformada de Furrier no projeto 
___ 

A Transformada de Fourier é uma técnica matemática usada para transformar um sinal do domínio do tempo para o domínio da frequência. Isso permite analisar os diferentes componentes de frequência presentes no sinal. 

Neste projeto, a Transformada de Fourier é utilizada para analisar o áudio capturado por um microfone e extrair informações sobre as frequências predominantes. 
- No método setup(), o microfone é inicializado e a entrada de áudio é conectada ao objeto FFT. O array espectro é usado para armazenar as magnitudes das bandas de frequência analisadas. 
- No método draw(), a FFT é chamada para analisar o áudio em tempo real. O resultado da análise é armazenado no array espectro, que contém a magnitude de cada banda de frequência.

Com essa análise, é possível identificar frequências específicas e realizar ações baseadas nelas, como a detecção de início e fim de transmissões e a leitura de sinais codificados em frequências específicas.