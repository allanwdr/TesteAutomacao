# language:pt

@api
@prova_api
@prova_funcional_teste_automatizado_api
Funcionalidade: Prova funcional de teste automatizado api em endpoint de filmes
  Como usuário final
  Quero efetuar uma requisição rest
  Para verificar os filmes cadastrados

  @request_rest
  @swapi_co_api_films.get
  @validar_requisicao_rest_retorna_body_filmes_cadastrados
  Cenário: Validar que ao efetuar uma requisição rest é retornado um body com filmes cadastrados
    Dado preparo a massa para o endpoint swapi_co_api_films.get para cenario positivo
    Quando executo a request do swapi_co_api_films.get
    Então validar que é retornado os filmes para o cenario positivo
