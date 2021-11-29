#language: pt

Funcionalidade: Cadastro
    Como usuário da Casa Rio grande do Sul
    Quero criar um cadastro
    Para logar na aplicação

    Esquema do Cenário: Cadastrar usuário inválido
        Dado que esteja na página de cadastro
        E clicado no botão "Criar uma conta"
        Quando cadastrar um usuário "<tipo>"
        Então deverá mostrar a mensagem "<mensagem>"
        Exemplos:
            | tipo                           | mensagem                                                                                                                                                   |
            | com CPF inválido               | O CPF informado é inválido                                                                                                                                 |
            | com Nome Completo sem espaço   | Por favor, digite o seu nome completo.                                                                                                                     |
            | com formato de e-mail inválido | Por favor insira um endereço de e-mail válido. Por exemplo joao@domain.com.                                                                                |
            | com senha inválida             | Please enter 6 or more characters without leading or trailing spaces.                                                                                      |
            | com senhas que não coincidem   | Por favor certifique-se que suas senhas coincidem.                                                                                                         |
            | com CNPJ inválido              | O CNPJ informado é inválido                                                                                                                                |
            | com um e-mail já existente     | Já existe uma conta com este endereço de email. Se você tem certeza que é o seu endereço de email, clique aqui para obter a sua senha e acessar sua conta. |


 Esquema do Cenário: Cadastrar usuário válido
        Dado que esteja na página de cadastro
        E clicado no botão "Criar uma conta"
        Quando cadastrar um usuário válido
        Então deverá ser redirecionado à página "Minha conta"
        Então deverá mostrar a mensagem "Obrigado por registrar-se com a Casa Rio Grande do Sul."