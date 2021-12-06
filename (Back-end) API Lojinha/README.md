# Plano de testes para a Lojinha API

1. Introdução

    O Plano de Testes da Lojinha API. compõe-se dos seguintes objetivos:
    
    •	Identificar informações de projeto existentes e os componentes de software que devem ser testados.
    
    •	Listar os Requisitos a Testar recomendados (alto nível).
    
    •	Recomendar e descrever as estratégias de teste a serem empregadas.
    
    •	Identificar os recursos necessários e prover uma estimativa dos esforços de teste.
    
    •	Listar os elementos resultantes do projeto de testes.

    Assume-se que os testes de unidade já forneceram cobertura do código fonte. Será testada apenas a parte Back-end.

    Estes testes têm por objetivo avaliar as funcionalidades principais da API, tanto seus requisitos funcionais como não funcionais, e seu desempenho. O objeto dos testes           funcionais é garantir que cada componente atenda aos requisitos funcionais conforme foram descritos na documentação, que também inclui o teste de validação.
    Os testes de integração devem provar que não há problemas no fluxo de dados e que o sistema funciona como uma unidade integrada.


2. A Lojinha API
    
    API criada pelo Júlio de Lima para suportar seus alunos na aprendizagem de técnicas e ferramentas de teste de software.

    2.1. 	Referências

        [1] Documentação da Lojinha API disponível em: http://165.227.93.41/lojinha-arquivos/Swagger.pdf


3. Requisitos a Testar

    A lista abaixo identifica aqueles itens – use cases, requisitos funcionais e não funcionais – que foram identificados como alvos de teste. Essa lista representa o que será testado. 
    
  •	Teste do Banco de Dados
  
        Verifique que as informações do usuário podem ser cadastradas e removidas.
        Verifique que as informações de produto podem ser cadastradas, consultadas, editadas e removidas do sistema.
        Verifique que as informações de componentes podem ser cadastradas, consultadas, editadas e removidas do sistema.
        Verifique que as informações úteis cadastradas possam ser consultadas.
        Verifique que o sistema é capaz de buscar e manter atualizadas as informações.
        
  •	Teste Funcional
  
        Verifique que as informações úteis obtidas pelo subsistema responsável são automaticamente e periodicamente atualizadas.
        Verifique que qualquer usuário pode acessar sua própria conta através de login e senha.
        Verifique que o usuário pode buscar por um produto.
        Verifique que o usuário pode buscar por um componente.

  •	Perfil da Performance
  
        Verifique que o tempo de resposta para as operações não ultrapassam 400 milissegundos.

  •	Teste de Segurança e de Controle de Acesso
  
        Verificar que usuários não cadastrados não podem acessar informações restritas aos cadastrados.
        Verificar que usuários não autenticados não podem inserir, atualizar ou remover produtos do sistema.
        Verificar que usuários não autenticados não podem inserir, atualizar ou remover componentes do sistema.
        
4. Estratégia de Teste

    Foram realizados casos de testes com todos os cenários pensados, sendo eles cenários de sucesso e cenários de falha, que foram agrupados em uma coleção na ferramenta             Postman. Além disso, foi feita uma coleção apenas para os casos de sucesso, denominado "Caminho Feliz", onde se tem um possível fluxo de execução bem sucedido.
    
    Os casos de testes estão presentes na documentação gerada a partir do Postman, nas URLs a seguir:
    
    Todos os cenários:
    
    Caminho Feliz:

    Os testes aapresentados aqui foram realizados na ferramenta Postman, utilizando a url base: “165.227.93.41/lojinha” e estão presentes como arquivo de Collection nomeados       "Lojinha API" e "Lojinha API - Caminho Feliz", e de forma mais visual nos reports do Newman, presentes na pasta "project_newman/newman" em HTML, podendo ser abertos com          qualquer navegador. O ambiente utilizado na hora dos testes no Postman está contido no arquivo do tipo environment chamado "Ambiente".
