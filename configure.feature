            #language: pt

            

            Esquema do Cenário:  Validar obrigatoriamente as seleções antes de inserir no carrinho.

            #História de usuário - Como cliente logado na plataforma
            Quero que o sistema valide as opções de cor, tamanho e quantidade antes de adicionar o produto ao carrinho
            Para garantir que estou comprando o item correto sem erros

            Dado que o usuário possui cadastro válido
            Quando eu seleciono a cor <"cor"> e tamanho "<tamanho>"
            Então o sistema deve ser "<resultado>"


            Exemplos:
            | cor  | tamanho | quantidade | resultado                                  |
            | Azul | M       | 2          | permitir a inserção do produto no carrinho |
            |      | M       | 2          | exibir mensagem de cor obrigatória         |
            | Azul |         | 2          | exibir mensagem de tamanho obrigatório     |
            | Azul | M       | 1          | exibir mensagem de quantidade obrigatória  |





Cenario: Deve permitir apenas 10 produtos por venda.

#História de usuário - Como cliente da loja
Quero que o sistema limite a quantidade máxima de produtos por compra a 10 unidades
Para garantir que a regra comercial da loja seja respeitada

Contexto: Dado que não quero comprar uma quantidade maior do que a permitida.


Quando eu seleciono a cor "Preto"
E informo a quantidade 11
Quando clico no botão "Adicionar ao carrinho"
Então o sistema deve exibir mensagem informando que o limite máximo é 10 produtos por venda.



Cenário: Quando eu clicar no botão "limpar" deve voltar ao estado original.

#História de usuário - Como cliente que está selecionando um produto
Quero que o botão "Limpar" restaure as seleções ao estado original
Para que eu possa reiniciar minha escolha sem precisar alterar campo por campo

Dado que selecionei cor "Azul", tamanho "M" e quantidade 3
Quando eu clicar no botão "Limpar"
Então o sistema deve retornar todos os campos ao estado original
E nenhum campo deve permanecer selecionado








