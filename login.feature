            #language: pt

            Histórias do Usuário - Como cliente da EBAC, quero cadastrar os meus dados
            para acessar a minha conta e realizar a minha primeira compra.

            Contexto: Dado que estou na tela de Login.

            Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Quando eu preencho todos os campos obrigatórios marcados com asterisco
            E informo um e-mail válido "cliente@ebac.com"
            Então o sistema deve realizar o cadastro com sucesso



            #Histórias do Usuário - Como cliente da plataforma
            Quero que o sistema valide o formato do e-mail informado no cadastro
            Para garantir que meus dados estejam corretos e eu consiga receber comunicações e acessar minha conta sem problemas.


            Esquema do Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            Dado que todos os campos obrigatórios foram preenchidos corretamente
            Quando informo o e-mail "<email>" errado
            E clico no botão "Cadastrar"
            Então o sistema deve exibir a mensagem de erro "Formato de e-mail inválido"

            Exemplos:
            | email           |
            | clienteebac.com |
            | cliente@ebac    |
            | @ebac.com       |
            | cliente@.com    |


            #Como cliente que está realizando cadastro
            Quero que o sistema me informe quando eu deixar um campo obrigatório em branco
            Para que eu possa preencher corretamente antes de finalizar o cadastro.

            Contexto: Dado que nesse cenário, quero que a plataforma me avise um campo obrigatório para que eu possa finalizar uma compra.


            Esquema do Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.
            Quando eu deixo o campo "<campo>" vazio
            E clico no botão "Cadastrar"
            Então o sistema deve exibir mensagem de alerta informando que o campo é obrigatório

            Exemplos:
            | campo     |
            | Nome      |
            | Sobrenome |
            | E-mail    |
            | Senha     |




