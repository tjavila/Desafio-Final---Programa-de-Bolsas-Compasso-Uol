#language pt-br

Funcionalidade: Filtro e Busca de produtos
    Como usuário da Casa Rio Grande do Sul
    Quero filtrar os produtos
    Para encontrá-los com mais facilidade

    Esquema do Cenário: Filtrar produtos
        Dado que esteja na página de pesquisa por produtos
        Quando filtrar por "<filtro_option>" com valor "<filtro_value>"
        Então deverá ser exibido "<resultados>"
            Exemplos:
            | filtro_option | filtro_value      | resultados                                                 |
            | Por Categoria | Decoração         | produtos diponíveis na categoria Decoração                 |
            | Nome          | Crescente         | produtos listados pelos nomes de A a Z                     |
            | Nome          | Decrescente       | produtos listados pelos nomes de Z a A                     |
            | Preço         | Crescentes        | produtos listados do mais barato ao mais caro              |
            | Preço         | Decrescente       | produtos listados do mais caro ao mais barato              |
            | Destaques     | Crescente         | produtos listados dos mais destacados aos menos destacados |
            | Destaques     | Decrescente       | produtos listados dos menos destacados aos mais destacados |
            | Preço         | R$0,00 - R$ 99,99 | produtos dentro da faixa de prçeo indicada                 |


    Esquema do Cenário: Busca de produtos
        Dado que esteja em uma página qualquer
        Quando realizar a busca do "<nome>" de um produto
        Então deverá ser exibido "<resultados>"
            Exemplos:
            | nome      | resultados                                     |
            | copos     | todos os produtos que possuem o nome copos     |
            | decoração | todos os produtos que possuem o nome decoração |


    Esquema do Cenário: Busca de produtos inexistentes
        Dado que esteja em uma página qualquer
        Quando realizar a busca do nome de produto não existente na aplicação
        Então deverá mostrar a mensagem "Sua busca não retornou resultados."