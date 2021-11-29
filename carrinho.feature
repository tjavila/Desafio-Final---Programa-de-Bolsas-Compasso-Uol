#language: pt

Funcionalidade: Carrinho
    Como usuário da Casa Rio Grande do Sul
    Quero adicionar um produto ao carrinho
    Para poder efetuar uma compra
    
    Esquema do Cenário: Adicionar produto ao carrinho
        Dado que esteja na página de um <produto> qualquer
        Quando clicar no botão "Comprar"
        Então deverá mostrar a mensagem "<produto> foi adicionado à meu carrinho"
        E o produto deverá ser adicionado ao carrinho
        E deverá ser redirecionado à página "Carrinho"


    Esquema do Cenário: Remover produto do carrinho da página do Carrinho
        Dado que esteja na página do carrinho
        Quando clicar no ícone "X"
        Então o produto deve ser deletado do carrinho
        E deverá mostrar a mensagem "SEU CARRINHO ESTÁ VAZIO"

    Esquema do Cenário: Remover produto do carrinho
        Dado que esteja na página inicial
        E clicar no ícone de carrinho
        Quando abrir a nova aba e clicar no botão "Remover"
        E confirmar no botão "OK"
        Então o produto deve ser deletado do carrinho

    Esquema do Cenário: Checkout
        Dado que esteja na página do carrinho
        E que possua produto(s) no carrinho
        Quando clicar no botão "Concluir Compra"
        Então deverá ser redirecionado para a página de pagamento