# GIT CAR - Sistema de Gestão para Concessionárias 🚗

![Java](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)
![JavaFX](https://img.shields.io/badge/JavaFX-0769C4?style=for-the-badge&logo=oracle&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white)
![Maven](https://img.shields.io/badge/Maven-C71A36?style=for-the-badge&logo=apachemaven&logoColor=white)
![Status do Projeto](https://img.shields.io/badge/Status-Finalizado-brightgreen)

> Projeto acadêmico de um sistema de gestão completo para concessionárias de veículos. Desenvolvido em Java com interface gráfica em JavaFX, o GIT CAR oferece um ambiente robusto para gerenciar vendas, estoque, clientes, funcionários e agendamentos.

---

### 📋 Índice

* [Sobre o Projeto](#-sobre-o-projeto)
* [Arquitetura](#-arquitetura)
* [Funcionalidades](#-funcionalidades)
* [Telas do Sistema](#-telas-do-sistema)
* [Tecnologias Utilizadas](#-tecnologias-utilizadas)
* [Como Executar o Projeto](#-como-executar-o-projeto)
* [Equipe](#-equipe)

---

## 💻 Sobre o Projeto

O **GIT CAR** é uma aplicação desktop feita em equipe para simular o ambiente operacional de uma concessionária. O sistema possui dois perfis de acesso, **Gerente** e **Vendedor**, cada um com permissões e funcionalidades específicas para suas responsabilidades.

O principal objetivo foi construir uma aplicação seguindo boas práticas de desenvolvimento, com uma estrutura bem definida (MVC), acesso a dados desacoplado (DAO) e um sistema de relatórios avançado, incluindo exportação para PDF.

---

## 🏛️ Arquitetura

O projeto foi estruturado utilizando o padrão **Maven** e organizado em pacotes para garantir a separação de responsabilidades:

-   **`com.gitcar.app.models`**: Contém as classes de entidade (POJOs) que modelam os dados do sistema, como `Veiculo`, `Cliente`, `Venda`, etc.
-   **`com.gitcar.app.dao`**: Camada de Acesso a Dados (Data Access Objects), responsável por toda a comunicação com o banco de dados MySQL (operações CRUD).
-   **`com.gitcar.app.controladores`**: Controladores do JavaFX que gerenciam a lógica e a interação do usuário com as telas.
-   **`com.gitcar.view`**: Arquivos FXML que definem a estrutura visual e os componentes de cada tela da interface gráfica.
-   **`com.gitcar.app.utils`**: Classes utilitárias, como `DatabaseUtil` para a gestão da conexão com o banco e `RelatorioVendasPDF` para a geração de relatórios.

---

## ✨ Funcionalidades

O sistema é dividido em módulos acessíveis de acordo com o perfil do usuário logado (Gerente ou Vendedor).

### Funcionalidades do Gerente
-   **Login Seguro:** Autenticação de usuários com base em perfil (Gerente/Vendedor).
-   **Dashboard Gerencial:** Acesso a todas as funcionalidades do sistema.
-   **Relatório de Vendas Avançado:**
    -   Visualização de veículos vendidos e disponíveis.
    -   Filtros por período, vendedor e termo de busca (modelo/marca).
    -   Cálculo de estatísticas: faturamento total, valor médio, top vendedores e modelo mais vendido.
    -   **Exportação do relatório completo para PDF.**
-   **Gerenciamento de Funcionários:** CRUD completo para os usuários do sistema.
-   **Cadastro de Veículos:** Adição de novos veículos ao estoque com atributos detalhados.
-   **Gerenciamento de Interesses:** Cadastro de interesses de clientes gerenciado em memória (Collections), sem persistência em banco.

### Funcionalidades do Vendedor
-   **Dashboard do Vendedor:** Acesso rápido às funcionalidades de venda.
-   **Tela de Venda de Veículos:**
    -   Busca de veículos disponíveis no estoque.
    -   Seleção ou cadastro de novos clientes na hora da venda.
    -   Definição de valor e método de pagamento (com opção de parcelamento).
    -   Atualização automática do status do veículo para "Vendido".
-   **Histórico de Vendas Pessoal:** Visualização das próprias vendas com filtro por período.
-   **Agendamento de Test-Drive:** Cadastro e consulta de agendamentos, vinculando clientes e veículos.

---

## 🖼️ Telas do Sistema

A seguir, uma lista das principais telas do sistema. *(Dica: tire screenshots de cada tela e substitua os links abaixo para criar uma galeria visual do seu projeto!)*

| Tela | Descrição | Imagem |
| :--- | :--- | :---: |
| **Login** | Tela de autenticação com diferenciação de perfil. | `[adicione o link da sua imagem aqui]` |
| **Menu Gerente** | Dashboard principal com acesso a todas as funções gerenciais. | `[adicione o link da sua imagem aqui]` |
| **Menu Vendedor** | Dashboard com as ferramentas essenciais para o vendedor. | `[adicione o link da sua imagem aqui]` |
| **Relatório de Vendas**| Tela de consulta avançada com filtros e estatísticas. | `[adicione o link da sua imagem aqui]` |
| **Vender Veículo** | Tela principal para registrar uma nova transação de venda. | `[adicione o link da sua imagem aqui]` |
| **Cadastro de Veículos**| Formulário detalhado para adição de novos veículos. | `[adicione o link da sua imagem aqui]` |
| **Agendar Test-Drive** | Tela para o agendamento de test-drives para clientes. | `[adicione o link da sua imagem aqui]` |

---

## 🛠️ Tecnologias Utilizadas

-   **Linguagem Principal:** [Java](https://www.oracle.com/java/)
-   **Interface Gráfica:** [JavaFX](https://openjfx.io/) & [FXML](https://openjfx.io/javadoc/11/javafx.fxml/javafx/fxml/doc-files/introduction_to_fxml.html)
-   **Banco de Dados:** [MySQL](https://www.mysql.com/)
-   **Driver de Conexão:** [JDBC](https://docs.oracle.com/javase/tutorial/jdbc/basics/index.html)
-   **Geração de Relatórios:** [Apache PDFBox](https://pdfbox.apache.org/)
-   **Gerenciador de Dependências:** [Maven](https://maven.apache.org/)
-   **Controle de Versão:** [Git](https://git-scm.com/) & [GitHub](https://github.com)

---

## 🚀 Como Executar o Projeto

Para executar este projeto em sua máquina, siga os passos abaixo.

### Pré-requisitos

Antes de começar, você vai precisar ter instalado em sua máquina as seguintes ferramentas:
* [Git](https://git-scm.com)
* [Java JDK](https://www.oracle.com/java/technologies/downloads/) (versão 11 ou superior)
* [Apache Maven](https://maven.apache.org/download.cgi)
* [MySQL Server](https://dev.mysql.com/downloads/mysql/)
* Uma IDE de sua preferência (ex: IntelliJ IDEA, Eclipse).

### Rodando o Projeto

```bash
# Clone este repositório
$ git clone [https://github.com/igaaot/GIT-CAR.git](https://github.com/igaaot/GIT-CAR.git)

# Acesse a pasta do projeto
$ cd GIT-CAR
```
**2. Configure o Banco de Dados**
   -   Crie um banco de dados no seu servidor MySQL.
   -   **Importante:** Execute o script SQL (`script_banco.sql`, por exemplo) que acompanha o projeto para criar todas as tabelas e relacionamentos necessários.
   -   Abra o projeto e localize a classe `com.gitcar.app.utils.DatabaseUtil.java`.
   -   Altere as credenciais de conexão (URL, usuário e senha) para as do seu ambiente local.

**3. Execute a Aplicação**
   -   Abra o projeto na sua IDE como um projeto Maven.
   -   Deixe o Maven baixar todas as dependências listadas no `pom.xml`.
   -   Encontre a classe principal `Iniciador` e execute-a.

---

## 👨‍💻 Equipe

Este projeto foi desenvolvido por:

* **Igor Nogueira Ferreira**
    * [![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/igor-nogueira-146348299/)
    * [![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/igaaot)

* **Thaison Damaceno Freitas**
    

* **Guilherme Fior**
    
