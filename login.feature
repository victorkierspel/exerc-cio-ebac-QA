 
 
  Scenario Outline:inserir dados válidos deve ser direcionado para a tela de checkout
    When eu informo usuário "cliente@ebac.com"
    And informo senha "Senha123"
    And clico no botão "Entrar"
    Then devo ser direcionado para a tela de checkout

 
 
 Scenario Outline: um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
    When eu informo usuário "<usuario>"
    And informo senha "<senha>"
    And clico no botão "Entrar"
    Then o sistema deve exibir a mensagem "Usuário ou senha inválidos"

    Examples:
      | usuario              | senha       |
      | cliente@ebac.com     | SenhaErrada |
      | usuario@invalido.com | Senha123    |
      |                      | Senha123    |
      | cliente@ebac.com     |             |


