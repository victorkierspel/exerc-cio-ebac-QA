
            Funcionalidade: Validação obrigatória das opções do produto antes da adição ao carrinho

            Como cliente logado na plataforma
            Quero que o sistema valide as opções de cor, tamanho e quantidade antes de adicionar o produto ao carrinho
            Para garantir que estou comprando o item correto sem erros

            Contexto: Dado que o usuário está logado na plataforma e acessa a página de um produto com variações obrigatórias de cor, tamanho e quantidade

            Esquema do Cenário:  Validar obrigatoriamente as seleções antes de inserir no carrinho.
            Quando eu seleciono a cor <"cor"> e tamanho "<tamanho>"
            Mas não informo a quantidade
            Então o sistema deve ser "<resultado>"


            Exemplos:
            | cor  | tamanho | quantidade | resultado                                  |
            | Azul | M       | 2          | permitir a inserção do produto no carrinho |
            |      | M       | 2          | exibir mensagem de cor obrigatória         |
            | Azul |         | 2          | exibir mensagem de tamanho obrigatório     |
            | Azul | M       | 1          | exibir mensagem de quantidade obrigatória  |





Funcionalidade: Controle de limite máximo de produtos por venda

Como cliente da loja
Quero que o sistema limite a quantidade máxima de produtos por compra a 10 unidades
Para garantir que a regra comercial da loja seja respeitada

Contexto: Dado que não quero comprar uma quantidade maior do que a permitida.

Cenario: Deve permitir apenas 10 produtos por venda.
Quando eu seleciono a cor "Preto"
E informo a quantidade 11 e clico no botão "Adicionar ao carrinho"
Então o sistema deve exibir mensagem informando que o limite máximo é 10 produtos por venda.





Funcionalidade: Resetar as seleções do produto

Como cliente que está selecionando um produto
Quero que o botão "Limpar" restaure as seleções ao estado original
Para que eu possa reiniciar minha escolha sem precisar alterar campo por outros produtos.

Contexto: Limpar o campo de seleção.

Cenário: Quando eu clicar no botão "limpar" deve voltar ao estado original.
Dado que selecionei cor "Azul", tamanho "M" e quantidade 3
Quando eu clicar no botão "Limpar"
Então o sistema deve retornar todos os campos ao estado original
E nenhum campo deve permanecer selecionado








