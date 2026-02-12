    #language: pt


    Scenario Outline:  Validar obrigatoriamente as seleções antes de inserir no carrinho.
        When eu seleciono a cor <"cor">
        And seleciono o tamanho "<tamanho>"
        And seleciono a quantidade "<quantidade>"
        And clico no botão "Adicionar ao carrinho"
        Then o sistema deve "<resultado>"


        Examples:
            | cor  | tamanho | quantidade | resultado                                  |
            | Azul | M       | 2          | permitir a inserção do produto no carrinho |
            |      | M       | 2          | exibir mensagem de cor obrigatória         |
            | Azul |         | 2          | exibir mensagem de tamanho obrigatório     |
            | Azul | M       |            | exibir mensagem de quantidade obrigatória  |

    Scenario Outline: Deve permitir apenas 10 produtos por venda.

        When eu seleciono a cor "Preto"
        And seleciono o tamanho "G"
        And informo a quantidade 11
        And clico no botão "Adicionar ao carrinho"
        Then o sistema deve exibir mensagem informando que o limite máximo é 10 produtos por venda.


    Scenario Outline: Quando eu clicar no botão "limpar" deve voltar ao estado original.
        Given que selecionei cor "Azul", tamanho "M" e quantidade 3
        When eu clicar no botão "Limpar"
        Then o sistema deve retornar todos os campos ao estado original
        And nenhum campo deve permanecer selecionado


