# Plano de testes para a Casa Rio Grande do Sul

1. Introdução

    O Plano de Testes para a Casa Rio Grande do Sul compõe-se dos seguintes objetivos:
    
    •	Identificar informações de projeto existentes e os componentes de software que devem ser testados.
    
    •	Listar os Requisitos a Testar recomendados (alto nível).
    
    •	Recomendar e descrever as estratégias de teste a serem empregadas.
    
    •	Listar os elementos resultantes do projeto de testes.

    Assume-se que os testes de unidade já forneceram cobertura do código fonte. Será testada apenas a parte Front-end.

    Estes testes têm por objetivo avaliar as funcionalidades principais do site. Os testes de integração devem provar que não há problemas no fluxo de dados e que o sistema         funciona como uma unidade integrada.


2. A Casa Rio Grande do Sul
    
    Inaugurada em 1969, é uma Loja de Utilidades Domésticas, Decoração, Utensílios de Cozinha e para Casa, muito utilizado para fazer listas de presentes de casamento. 

    2.1. 	Referências

        [1] Site disponível em: https://www.casargs.com.br


3. Requisitos a Testar

    A lista abaixo identifica aqueles itens – use cases, requisitos funcionais e não funcionais – que foram identificados como alvos de teste. Essa lista representa o que será       testado. 
    
  •	Teste do Banco de Dados
  
        Verifique que as informações do usuário podem ser cadastradas.
        Verifique que as informações de produto podem ser consultadas.
        Verifique que as informações de carrinho podem ser cadastradas, consultadas, editadas e removidas do sistema.
        Verifique que as informações úteis cadastradas possam ser consultadas.
        Verifique que o sistema é capaz de buscar e manter atualizadas as informações.
        
  •	Teste Funcional
  
        Verifique que as informações úteis obtidas pelo subsistema responsável são automaticamente e periodicamente atualizadas.
        Verifique que qualquer usuário pode acessar sua própria conta através de login e senha.
        Verifique que o usuário pode buscar por um produto.


  •	Teste de Segurança e de Controle de Acesso
  
        Verificar que usuários não cadastrados não podem acessar informações restritas aos cadastrados.
        
4. Estratégia de Teste

    Foram realizados casos de testes com todos os cenários pensados para as funcionalidades de login, cadastro, carrinho, filtro e busca de produtos, sendo eles cenários de         sucesso e cenários de falha, que foram escritos na linguagem Gherkin através de um arquivo .feature na ferramenta Visual Studio Code. Os arquivos estão separados por             funcionalidade, onde cada arquivo traz o nome da funcionalidade no qual os casos de testes foram implementados.
    Os casos de testes criados foram:
    
           Realizar login válido
           Realizar login inválido
           Realizar logout
           Cadastrar usuário inválido
           Cadastrar usuário válido
           Adicionar produto ao carrinho
           Remover produto da página de carrinho
           Remover produto do carrinho flutuante
           Realizar checkout
           Filtrar produtos
           Busca de produtos
           Busca de produtos inexistentes
    
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
Adicional: Mapa mental no XMind

O mapa mental da Casa Rio grande do Sul, criado no XMind, foi criado para auxiliar no registro de cenários existentes para cada funcionalidade. Então o mapa foi construído conforme foram testados no site dos cenários e descobertas novas possibilidades de resposta, para facilitar a montagem dos casos de testes em Gherkin no VSCode.
