# language:pt

@web
@prova_web
@prova_funcional_teste_automatizado_web
Funcionalidade: Prova funcional de teste automatizado web no site da Inmetrics
  Como usuário final
  Quero acessar o site da Inmetrics
  Para me cadastrar em processos seletivos

  @redirecionamento
  @validar_acessar_sessao_confira_vagas_encaminhado_site_gupy
  Esquema do Cenário: Validar que ao acessar a sessão confira nossas vagas é encaminhado para o site gupy
    Dado que acesso a home do site da Inmetrics
    Quando desço até a sessão de "<sessao>"
    E clico no link "<link>"
    Então validar que é encaminhado para cenário "<tipo>"

    Exemplos:
    | tipo     | sessao     | link                    |
    | positivo | Carreiras  | confira nossas vagas    |
    | negativo | Quem Somos | Ver Produtos & Serviços |