            #language: pt

            Esquema do Cenario: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Quando eu preencho todos os campos obrigatórios marcados com asterisco
            E informo um e-mail válido "cliente@ebac.com"
            Então o sistema deve realizar o cadastro com sucesso

            #Como devem ser cadastrados, ou seja, devo inserir email, senha e então fazer o cadastro, esse é um cenário testável.



            Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
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


