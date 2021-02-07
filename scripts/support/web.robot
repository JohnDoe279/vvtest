*** Settings ***
Library        SeleniumLibrary
Variables      ../../configuration/config.py
Variables      ../../data/webElements.py
Variables        ../../data/qaInfo.py

*** Keywords ***
que eu acesse a página da VV Test
    Open Browser        ${vvTestPage}        ${Browser}
    Maximize browser window

acesse o menu ${itemMenu}
    Click Element        ${itemMenu}

eu preencher todos os campos obrigatórios
    Input Text        ${campoNome}            ${nome}
    Input Text        ${campoSobrenome}       ${sobrenome}
    Input Text        ${campoEmail}           ${email}
    Input Text        ${campoConfEmail}        ${email}
    Input Text        ${campoTelefone}        ${telefone}
    Click Element     ${campoSelecaoIdade}
    Select From List By Label        ${listaTempoDeQA}        ${tempoQA}
    Select From List By Label        ${listaAtraiuArea}       ${atraiuArea}
    Click Element    ${campoSelecaoMelhoria}
    Input Text        ${campoInteresseLinguagem}        ${interesseLinguagens}
    Input Text        ${campoPlanoCarreira}        ${planoDeCarreira}
    Click Element     ${botaoEnviar}

deve ser direcionado para uma página de sucesso
    Wait Until Element Contains        ${retornoEnvioForm}        ${menssagemDeSucesso}

Encerrar Sessao
    Capture Page Screenshot
    Close Browser
        
    