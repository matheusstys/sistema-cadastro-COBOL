# Sistema de Cadastro de Usuário - COBOL

Este é um projeto simples desenvolvido em COBOL para cadastro de usuários. O programa recebe informações como nome, idade e e-mail, realiza validações e exibe um status sobre a validade do e-mail e se o usuário é maior ou menor de idade.

## Funcionalidades

- Recebe o nome, idade e e-mail do usuário.
- Valida o e-mail (verifica se contém o caractere `@`).
- Classifica o usuário como maior ou menor de idade.
- Exibe as informações cadastradas e o status do cadastro.

## Como Executar

### Pré-requisitos

- **Compilador COBOL**: Você precisa de um compilador COBOL como o [GnuCOBOL](https://gnucobol.sourceforge.io/) ou OpenCobolIDE.

### Passos para execução

1. Clone este repositório:
    ```bash
    git clone https://github.com/matheusstys/sistema-cadastro-COBOL.git
    cd sistema-cadastro-COBOL
    ```

2. Compile o código COBOL:
    ```bash
    cobc -x STMCAD010.cob
    ```

3. Execute o programa:
    ```bash
    ./STMCAD010
    ```

4. Siga as instruções no terminal para cadastrar os dados.

## Exemplo de Execução
