            Funcionalidade: Realizar um cadastro preenchendo todos os campos obrigatórios corretamente.

            Como cliente da EBAC Shop
            Quero realizar meu cadastro preenchendo todos os campos obrigatórios corretamente
            Para criar minha conta com sucesso e acessar o sistema

            Contexto: Dado que estou na página de cadastro com os campos obrigatórios disponíveis para preenchimento.

            Cenario: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Quando eu preencho todos os campos obrigatórios marcados com asterisco
            E informo um e-mail válido "cliente@ebac.com"
            Então o sistema deve realizar o cadastro com sucesso




            Funcionalidade: Validação do campo de e-mail no cadastro de usuário

            Como usuário que está realizando meu cadastro na plataforma
            Quero que o sistema valide o formato do e-mail informado
            Para garantir que eu insira um endereço válido antes de concluir o cadastro

            Contexto: Dado que preciso fazer o cadastro, o email precisa ser validado.

            Esquema do Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            Quando todos os campos obrigatórios foram preenchidos corretamente e informo o e-mail "<email>" errado
            E clico no botão "Cadastrar"
            Então o sistema deve exibir a mensagem de erro "Formato de e-mail inválido"

            Exemplos:
            | email           |
            | clienteebac.com |
            | cliente@ebac    |
            | @ebac.com       |
            | cliente@.com    |



            Funcionalidade: Validação de campos obrigatórios no cadastro de usuário

            Como cliente que deseja se cadastrar na plataforma
            Quero ser alertado caso deixe um campo obrigatório vazio
            Para que eu possa corrigir a informação antes de concluir o cadastro

            Contexto: Dado que estou na página de cadastro com os campos obrigatórios identificados.

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




