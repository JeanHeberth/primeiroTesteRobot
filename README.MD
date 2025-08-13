
## Pré-requisitos

Antes de executar os testes, certifique-se de ter o Python e o pip instalados.

## Instalação

1.  Clone o repositório:
    ```bash
    git clone https://github.com/JeanHeberth/primeiroTesteRobot.git
    cd automacaoRobot/primeiroTesteRobot
    ```

2.  Crie e ative um ambiente virtual (recomendado):
    ```bash
    python -m venv .venv
    source .venv/bin/activate  # No Windows use `.venv\Scripts\activate`
    ```

3.  Instale as dependências:
    ```bash
    pip install -r requirements.txt
    ```

## Como Executar os Testes

Para executar todos os testes do projeto, utilize o comando:

```bash
robot tests/
```

Para executar uma suíte de testes específica (por exemplo, os testes da Amazon):

```bash
robot tests/amazon/amazon_tests.robot
```

## Visualizando os Resultados

Após a execução, os seguintes arquivos serão gerados na raiz do projeto:

-   `log.html`: Logs detalhados da execução.
-   `report.html`: Relatório com o resumo dos resultados dos testes.
-   `output.xml`: Resultados em formato XML.

Abra o `report.html` em seu navegador para ver um relatório completo e interativo.


## Autor

Este projeto foi desenvolvido por **Jean Heberth**.
- GitHub: [JeanHeberth](https://github.com/JeanHeberth)
- LinkedIn: [Jean Heberth](https://www.linkedin.com/in/jean-heberth-souza-vieira-725166150/)
