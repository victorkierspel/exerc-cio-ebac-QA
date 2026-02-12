

    Scenario: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
        When eu preencho todos os campos obrigatórios marcados com asterisco
        And informo um e-mail válido "cliente@ebac.com"
        And clico no botão "Cadastrar"
        Then o sistema deve realizar o cadastro com sucesso

    Scenario Outline: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
        When eu preencho todos os campos obrigatórios corretamente
        And informo o e-mail "<email>"
        And clico no botão "Cadastrar"
        Then o sistema deve exibir a mensagem de erro "Formato de e-mail inválido"

        Examples:
            | email           |
            | clienteebac.com |
            | cliente@ebac    |
            | @ebac.com       |
            | cliente@.com    |


    Scenario Outline: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.
        When eu deixo o campo "<campo>" vazio
        And clico no botão "Cadastrar"
        Then o sistema deve exibir mensagem de alerta informando que o campo é obrigatório

        Examples:
            | campo     |
            | Nome      |
            | Sobrenome |
            | E-mail    |
            | Senha     |