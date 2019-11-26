# Repositório

https://github.com/allanwdr/TesteAutomacao

# Pré-condição

1. Deve ter a linguagem de programação Ruby instalado na máquina
2. Deve ter a gem bundler instalado na máquina
3. Acessar a pasta raiz do projeto e executar o comando bundle via linha de comando

# Drivers

Antes de rodar algum cenário Web você deve adicionar o driver do navegador em uma pasta reconhecida no path do sistema com a versão compatível a versão atual do seu navegador.

# Uso

Para executar algum cenário Web, basta mandar o comando:
`cucumber -t <TAG> -p <WEB>`

Para executar algum cenário de API, basta mandar o comando:
`cucumber -t <TAG> -p <API>`

Obs.: DEVE OBRIGATORIAMENTE SER PASSADO A PLATAFORMA (api ou web) NA CHAMADA DO CENÁRIO

# Mapeamento

- Os cenário estão em `features\specs\<SISTEMA>\<FLUXO>`
- Os steps estão em `features\step_definitions\<SISTEMA>\<FLUXO>`
- OS mapeamentos das páginas estão em `features\page_objects\<PAGINA>`
- As referências dos page_objects estão em `features\support\ref_page\<SISTEMA>`
