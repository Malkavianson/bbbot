BBBot + OpenCV

===============

Pré requisitos: 
```

Nodejs
Python 3.7 > 3.8
OpenCV 3.4.2

```
===============

Você precisa exportar duas variáveis para poder logar no site da Globo e uma para o participante que vai ser votado:

Linux / Mac

```
export GLOBO_USERNAME='your-email@globo.com'
export GLOBO_PASSWORD='xxxxxxxxx'
export PARTICIPANTE=flay
```

Windows PowerShell

```
$env:GLOBO_USERNAME='your-email@globo.com'
$env:GLOBO_PASSWORD='xxxxxxxxx'
$env:PARTICIPANTE=flay
```

Ou pode executar diretamente via node

```
node ./src/vote.js participante your-email@globo.com xxxxxxxxx
```

INSTALAÇÃO NO WINDOWS
=====================

1) Rode o arquivo `install.bat` para instalação de programas auxiliares
2) Rode o bot com `run-server.bat`. Um prompt será mostrado perguntando suas informações (conta/senha globo, participante que quer votar)
3) Caso o bot dê problema, tente votar manualmente primeiro com sua conta só pra depois tentar utilizar o bot.

INSTALAÇÃO EM MAC E LINUX
=========================

Instale o Python3 e o Node.JS

Depois de instalar essas duas dependências, rode os seguinte comandos:

```
pip3 install -r requirements.txt
npm install
```

Normalmente o Python2 já vem instalado nessas máquinas, então você precisa instalar o Python3 e ficar com as duas instalações.

Rodando o bot:

```
npm start
```

TREINAMENTO DO ALGORITMO
========================

Esse bot é feito utilizando o SIFT do OpenCV. Algumas captchas não vão funcionar corretamente pois não temos todas as imagens do banco. Para ajudar nesse mapeamento, faça o seguinte:

1) Ele vai baixar um captcha com um nome. Esse arquivo vai ser salvo em `images/<simbolo>.png`
2) O programa vai cortar o captcha em 5 pedaços e renomear cada pra: images/<simbolo>_numero.png
3) É só puxar a versão correta pra images_individual como <simbolo>_numero.png que o programa vai identificar esse ícone
4) Abra um pull request para atualizarmos aqui :)


Perguntas Frequentes
====================
* OpenCV não instala * Tente reinstalar manualmente atravéz do link: https://sourceforge.net/projects/opencvlibrary/files/opencv-win/3.4.2/opencv-3.4.2-vc14_vc15.exe/download
* pip desatualizado * Tente atualizar manualmente com o comando:*" python -m pip install --upgrade pip "*
* Erra muitos captchas * Vá até a pasta src/images, selecione os captchas corretos, renomeie depois do underline e mova para a pasta src/images_individual



TODO
=====

  - Captchas são atualizados pelo GShow diariamente, é necessário selecionar os captchas errados na pasta images e, após renomea-los mover para a pasta images_individual
  - Precisa melhorar em condições adversas (clique errado, dois cliques no captcha);
  - Colocar no docker.hub;
  - Cleanup das pastas de imagens;

Inspirado no bot obsoleto do https://github.com/diofeher/
