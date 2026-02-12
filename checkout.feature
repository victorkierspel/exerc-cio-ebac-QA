            #language: pt

            Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Quando eu preencho todos os campos obrigatórios marcados com asterisco
            E informo um e-mail válido "cliente@ebac.com"
            Então o sistema deve realizar o cadastro com sucesso



            Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            Dado que todos os campos obrigatórios foram preenchidos corretamente
            Mas informo o e-mail "<email>"
            E clico no botão "Cadastrar"
            Então o sistema deve exibir a mensagem de erro "Formato de e-mail inválido"

            Exemplos:
            | email           |
            | clienteebac.com |
            | cliente@ebac    |
            | @ebac.com       |
            | cliente@.com    |


            Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.
            Quando eu deixo o campo "<campo>" vazio
            E clico no botão "Cadastrar"
            Então o sistema deve exibir mensagem de alerta informando que o campo é obrigatório
            

            Exemplos:
            | campo     |
            | Nome      |
            | Sobrenome |
            | E-mail    |
            | Senha     |


