# Repositório

https://github.com/allanwdr/TesteAutomacao

# Drivers

Antes de todar algum cenário Web você deve adicionar o driver do navegador na estrutura `features\support\drivers`

# Uso

Para executar algum cenário Web, basta mandar o comando:
comando: cucumber -t <TAG> -p <WEB>

Para executar algum cenário de API, basta mandar o comando:
comando: cucumber -t <TAG> -p <API>

# Mapeamento

- Os cenário estão em `features\specs\<SISTEMA>\<FLUXO>`
- Os steps estão em `features\step_definitions\<SISTEMA>\<FLUXO>`
- OS mapeamentos das páginas estão em `features\page_objects\<PAGINA>`
- As referências dos page_objects estão em `features\support\ref_page\<SISTEMA>`
