```bash
 ▄▄▄▄    ▒█████   ▄████▄   ▄▄▄      
▓█████▄ ▒██▒  ██▒▒██▀ ▀█  ▒████▄    
▒██▒ ▄██▒██░  ██▒▒▓█    ▄ ▒██  ▀█▄  
▒██░█▀  ▒██   ██░▒▓▓▄ ▄██▒░██▄▄▄▄██ 
░▓█  ▀█▓░ ████▓▒░▒ ▓███▀ ░ ▓█   ▓██▒
░▒▓███▀▒░ ▒░▒░▒░ ░ ░▒ ▒  ░ ▒▒   ▓▒█░
▒░▒   ░   ░ ▒ ▒░   ░  ▒     ▒   ▒▒ ░
 ░    ░ ░ ░ ░ ▒  ░          ░   ▒   
 ░          ░ ░  ░ ░            ░  ░
      ░          ░                  

# Compile, rode & compare os casos de testes do boca com apenas um comando.
# Seja feliz :)
```
---
### Conteúdo

- [Motivo](#motivo)
- [Instalação](#instalacao)
  - [Linux](#linux)
  - [Replit](#replit)
- [Como usar](#como-usar)
- [Importante](#importante)
- [Desinstalação](#desinstalacao)
- [Autor](#autor)
- [Licença](#licenca)

<a name="motivo"></a>
---
### Motivo

Apesar do linux possuir inúmeras ferramentas para facilitar nossa vida em produtividade, ainda não é uma tarefa fácil compilar, rodar e verificar os exercícios, essencialmente porque são comandos grandes que precisam ser rodados diversas vezes. Pensando nisso, este script foi criado para **aumentar** a produtividade programando e **reduzir** as chances de erros ao realizar as tarefas do Boca. Espero ajudar. :)

<a name="instalacao"></a>
---
### Instalação

<a name="linux"></a>

##### Linux

Para instalar, **rode** os comandos abaixo:

```
git clone https://github.com/luizfelmach/boca
cd boca
chmod +x install.sh
./install.sh
```
Isso irá **clonar** este repositório e fazer a **instalação** em seu linux.

<a name="replit"></a>

##### Replit

Para instalar no Replit, **crie** um projeto em C e **rode** os comandos abaixo:
```
cd $HOME
git clone https://github.com/luizfelmach/boca
cd boca
chmod +x install.sh
./install.sh
```
Isso é o suficiente para fazer a **instalação** em seu Replit.

<a name="como-usar"></a>
---
### Como usar

Após **instalar** este repositório em seu **ambiente de programação**, você terá um novo comando chamado `boca`. Não hesite, experimente digitar em seu terminal `boca` e apertar `enter`. Se tudo ocorreu bem na instalação, voce receberá algo assim:
```
Uso:
  boca [opções] <arquivo>     Compile, execute e verifique os casos de testes

Opções:
  -c          Passe argumentos para o compilador gcc (Por exemplo, -c -lm para linkar a biblioteca <math.h>)
  -n          Diretório de entrada para seu programa (Padrão: ./input)
  -u          Diretório de saída para seu programa (Padrão: ./output)
  -m          Diretório de saída gerado (Padrão: ./myOutput)
  -d          Limpe os arquivos gerados pelo programa
  -h          Ajuda
```
Exemplo de um uso simples:
<br>
`boca codigo.c`

Isso irá procurá, por **padrão**, no seu diretório **atual**, uma pasta chamada **input** & **output** para verificar se seu programa (`codigo.c`) com os inputs & outputs fornecidos estão **corretos**.
Se tudo estiver correto, voce não deve esperar **nenhuma saída**, porém caso sua saída não esteja correta, o boca irá retornar as **diferenças** nas saídas.

Caso queira **mudar** a pasta de input e output, consute `boca -h`.

<a name="importante"></a>
---
### Importante

<a name="desinstalacao"></a>
---
### Desinstalação

Para **remover** este código de seu linux, **dentro** do diretório clonado do **boca**, rode os comandos abaixo:
```
chmod +x uninstall.sh
./uninstall.sh
```
<a name="autor"></a>
---
### Autor

Luiz Felipe Machado. **<3**

<a name="licenca"></a>
---
### Licença

[MIT License](./LICENSE)
