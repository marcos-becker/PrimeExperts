# PrimeExperts
Curso Robot - Prime Experts da Prime Control


- Como subir uma alteração no GitHub
    - 1º faz uma modificação no arquivo la no visual code
    - 2º git add . (para adicionar as modificações)
    - 3º git commit -m "Uma mensagem explicativa" (para efetivar a alteração)
    - 4º git push

git config --global user.email "you@example.com"
git config --global user.name "you"

git clone https://github.com/marcos-becker/PrimeExperts.git

pode usar Credencias do Windows para ajustar os dados de usuário

- Variáveis declaradas na seção *** Variables *** tem o escopo GLOBAL!    
- Set Test Variable = faz com que todas as KWs do teste enxerguem a variável!
- Set Suite Variable = faz com que todas os testes da suíte enxerguem a variável!
- Set Global Variable = faz com que todas suítes da execução enxerguem a variável!

15/06 comando para executar - robot -t "Meu teste imprimindo um dicionário de PESSOA" .\Variables\Exercicio20210614.robot

16/06 - #Sleep    5s para tempo de fechamento automatizado

[20:17] Mayara Ribeiro Fernandes
        Desafio WebTesting!
        
        Text
      
    Caso de Teste 02: Pesquisar produto não existente
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "itemNãoExistente" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir mensagem "No results were found for your search "itemNãoExistente""
Caso de Teste 03: Listar Produtos
    Acessar a página home do site
    Passar o mouse por cima da categoria "Women" no menu principal superior de categorias
    Clicar na sub categoria "Summer Dresses"
    Conferir se os produtos da sub-categoria "Summer Dresses" foram mostrados na página
Caso de Teste 04: Adicionar Cliente
    Acessar a página home do site
    Clicar em "Sign in"
    Informar um e-mail válido
    Clicar em "Create an account"
    Preencher os dados obrigatórios
    Submeter cadastro
    Conferir se o cadastro foi efetuado com sucesso
    