Feature: Validar enderço da unidade de Brasilia
 Já sou cadastrado como representante e desejo fazer indicações de clientes

  @Fleury
  Scenario: Validar endereço com sucesso

    Given estou na home
    And Clico em unidade
    When Eu scrollar a tela até a unidade de Brasilia
    And Clicar nela
    Then Deverá aparecer 
    
