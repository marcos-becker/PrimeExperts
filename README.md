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
