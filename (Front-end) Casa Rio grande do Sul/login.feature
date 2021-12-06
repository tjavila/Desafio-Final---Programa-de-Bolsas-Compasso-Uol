#language: pt

Funcionalidade: Login
    Como usuário da Casa Rio Grande do Sul
    Quero efeturar login em minha conta
    Para poder realizar uma compra

    Esquema do Cenário: Realizar login válido
        Dado que esteja na página de login
        Quando digitar um e-mail e senha válidos
        E realizar a ação "Fazer Login"
        Então o usuário é redirecionado para a página inicial

    #Como simbolizar casos com valores de senha diferentes que retornam resultados diferentes?
    Esquema do Cenário: Realizar login inválido
        Dado que esteja na página de login
        Quando realizar login com "<tipo>"
        Então deverá mostrar a mensagem "<mensagem>"
            Exemplos:
            | tipo                           | mensagem                                                                    |
            | email não cadastrado           | Usuário ou senha incorretos. Por favor tente novamente.                     |
            | email com formato inválido     | Por favor insira um endereço de e-mail válido. Por exemplo joao@domain.com. |
            | e-mail e/ou senha em branco    | Este é um campo obrigatório.                                                |
            | senha com formato inválido     | Please enter 6 or more characters without leading or trailing spaces.       |
            | email correto e senha inválida | Usuário ou senha incorretos. Por favor tente novamente.                     |

    Esquema do Cenário: Realizar logout
        Dado que esteja logado
        E em uma página qualquer
        Quando realizar a ação de "Sair"
        Então o usuário deverá ser deslogado
        E deverá mostrar a mensagem "VOCÊ SAIU DA SUA CONTA. Você saiu da sua conta e será redirecionado à página inicial em 5 segundos."
        E redirecionado para a página inicial
