*** Settings ***
Resource        ../support/web.robot

Test Teardown    Encerrar Sessao

*** Test Cases ***
Preencher pesquisa com dados obrigatórios válidos
    Given que eu acesse a página da VV Test
    And acesse o menu ${pesquisaQA}
    When eu preencher todos os campos obrigatórios 
    Then deve ser direcionado para uma página de sucesso