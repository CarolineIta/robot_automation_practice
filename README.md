# Robot Automation  Practice

Bem-vindo ao projeto de automação do site Automation Practice, uma loja virtual popular entre os entusiastas de testes automatizados. Meu nome é Caroline Ita e desenvolvi este projeto com o intuito de explorar e aprimorar minhas habilidades em automação de testes usando Python e o Robot Framework com a lib Browser.

## Fluxos Automatizados 🤖

- *Login* 
- *Criação de Conta*
- *Criação de Pedidos*

## Organização do Projeto 📂
- **environment**: Aqui você encontra todas as rotas do projeto e da aplicação. 
  - **routes**:
    - **routes.robot**: Nesse arquivo você encontra todas as rotas do projeto organizadas e também algumas variavéis globais, toda vez que um novo arquivo for criado no resource ele deve ser mapeado aqui.
  - **environment.robot**: Nesse arquivo é onde colocamos a "rota" das rotas, rs 

- **resources**: Aqui você encontra os elements e as pages do projeto.
  - **elements**:
    - Nessa pasta você encontra os arquivos com os locators utilizados mapeados. 
  - **pages**:
    - Nessa pasta você encontra os arquivos com as keywords utilizadas nos testes.

- **test**: Nessa pasta você encontra os arquivos com os testes.
- **README**: Arquivo com a documentação do projeto.
- **requirements**: Arquivo de dependências do projeto.

## Instação das dependências 🛠️

### Pré requisitos
1. Instale o Pyhton e o Node
- [Python - Versão 3.8 ou Superior](https://www.python.org/downloads/)
- [Node.js - Versão 18 ou 20 LTS ](https://nodejs.org/en/)

2. Clone o respositório:

```sh
$ git clone https://github.com/CarolineIta/robot_automation_practice.git
```

3. Acesse a pasta raiz do projeto
```sh
$ cd robot_automation_practice
```

4. Instale as dependências 
```bash
  pip install -r requirements.txt
```

5. Inicializar a browser, para instalar as dependências do playwright
```bash
  rfbrowser init
```



## Executando os Testes 🚀

Agora que você já está com o ambiente todo configurado, é hora de rodar os testes, isso pode ser feito de algumas formas que eu explico logo abaixo.



### Para executar todos os testes: 

```bash
  robot -d ./result test
```
### Para executar um teste especifíco: 

```bash
  robot -d ./result -t "Usuário válido realiza login com sucesso" test
```

### Para executar testes usando Tags: 

```bash
  robot -d ./result -i Smoke test
```

Quando passamos o -d é um parâmetro que indica que os resultados da execução deve ser armazenado em um diretório específico
já o -t é pra indicar que só o cenário "${nome do cenário}" deve ser executado e por último o -i é pra indicar que os testes com a tag ${nomedatag} devem ser executados


### Feedback ✨

Se você tiver algum feedback, por favor me deixe saber pelo e-mail caroline.mg.ita@gmail.com

## Autor 👩‍💻

- [Caroline Ita](caroline.mg.ita@gmail.com)
