      #language: pt


      Cenário:inserir dados válidos deve ser direcionado para a tela de checkout
      Quando eu informo usuário "cliente@ebac.com" e a senha "Senha123"
      E que clico no botão "Entrar"
      Então devo ser direcionado para a tela de checkout




      Cenário: um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
      Dado que informo usuário "<usuario>"
      E informo senha "<senha>" e clico no botão "Entrar"
      Então o sistema deve exibir a mensagem "Usuário ou senha inválidos"


      Exemplos:
      | usuario              | senha       |
      | cliente@ebac.com     | SenhaErrada |
      | usuario@invalido.com | Senha123    |
      |                      | Senha123    |
      | cliente@ebac.com     |             |



