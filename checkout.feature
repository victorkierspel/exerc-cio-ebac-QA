            Funcionalidade: Tela de Checkout

            Como cliente da EBAC Shop
            Quero realizar meu cadastro
            Para finalizar minhas compras

            Contexto: Dado que estou na tela de cadastro
            Cenario: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Quando eu preencho todos os campos obrigatórios marcados com asterisco
            E informo um e-mail válido "cliente@ebac.com"
            Então o sistema deve realizar o cadastro com sucesso



            Contexto: Dado que preciso fazer o cadastro
            Esquema do Cenário: Não deve permitir campo e-mail com formato inválido, erro deve ser informado
            Quando todos os campos obrigatórios foram preenchidos corretamente e informo o e-mail <email> errado
            E clico no botão cadastrar <cadastrar>
            Então o sistema deve exibir a mensagem de erro "Formato de e-mail inválido"

            Exemplos:
            | email           |
            | clienteebac.com |
            | cliente@ebac    |
            | @ebac.com       |
            | cliente@.com    |


            Contexto: Dado que estou na página de cadastro
            Esquema do Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta
            Quando eu deixo o campo <campo> vazio
            E clico no botão "Cadastrar"
            Então o sistema deve exibir mensagem de alerta informando que o campo é obrigatório


            Exemplos:
            | campo     |
            | Nome      |
            | Sobrenome |
            | E-mail    |
            | Senha     |




