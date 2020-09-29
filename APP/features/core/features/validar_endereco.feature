Feature: Validar enderço da unidade de Brasilia
 Já sou cadastrado como representante e desejo fazer indicações de clientes

  @Fleury
  Scenario: Validar endereço com sucesso

    Given Estou na home
    And Clico em Unidades
    When Encontrar a unidade de Brasilia
    Then Valido o endereco da unidade
    
