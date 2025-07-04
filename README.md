# 📚 Sistema de Gestão de Biblioteca Universitária

Bem-vindo ao repositório do **Sistema de Gestão de Biblioteca Universitária**!  
Este projeto apresenta uma solução completa e profissional para o gerenciamento de acervo, usuários, empréstimos, reservas e multas em ambientes acadêmicos, com foco em robustez, integridade e facilidade de expansão.

---

## ✨ Visão Geral

Este sistema foi projetado com uma modelagem relacional avançada em **MySQL** e práticas modernas de versionamento com **Git**. Toda a documentação, scripts e diagramação seguem padrões que facilitam o entendimento, a colaboração e a escalabilidade do projeto.

---

## 🏗️ Estrutura do Projeto

- **Modelagem Relacional**: Entidades bem definidas para Usuários, Livros, Empréstimos, Reservas e Multas.
- **Integridade dos Dados**: Uso de chaves primárias e estrangeiras, constraints e triggers para garantir regras de negócio.
- **Automação de Processos**: Trigger para atualização automática do status do livro ao ser devolvido.
- **Documentação e Organização**: Diretórios para scripts SQL, diagramas ER e relatórios.

---

## ⚙️ Funcionalidades Principais

- Cadastro de usuários (aluno, professor, visitante) com dados detalhados.
- Gerenciamento do acervo de livros, acompanhando status e categorias.
- Controle rigoroso de empréstimos e devoluções, incluindo prazos e status.
- Sistema de reservas com acompanhamento e liberação de filas.
- Aplicação automática de multas em casos de atraso.
- Consultas gerenciais para acompanhamento do uso da biblioteca e geração de relatórios.

---

## 🚀 Como Utilizar

1. **Clone este repositório:**
    ```bash
    git clone https://github.com/seuusuario/projeto-biblioteca-bd.git
    ```

2. **Importe os scripts SQL** para o seu MySQL (recomendado versão 8.0 ou superior).

3. **Siga as instruções** nos scripts e documentação para executar as operações desejadas.

4. **Utilize o controle de versão** com Git para registrar alterações, criar branches e colaborar com o projeto.

---

## 🗂️ Estrutura Recomendada

projeto-biblioteca-bd/
│
├── sql/ # Scripts SQL de criação e manipulação do banco
├── docs/ # Diagramas ER e documentação técnica
└── README.md # Este arquivo


---

## 🤝 Contribuição

- Faça fork deste repositório para propor melhorias ou correções.
- Crie branches para cada nova funcionalidade.
- Use pull requests detalhados e mensagens de commit claras.
- Consulte os diagramas e scripts antes de alterações estruturais.

---

## 📄 Licença

Este projeto está sob a licença [Creative Commons Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/).

---

## 💡 Contato

Para dúvidas, sugestões ou contribuições, utilize as **issues** do repositório ou envie mensagem pelo canal institucional.

---

> **Desenvolvido para o módulo de Banco de Dados e Controle de Versão - UFMS Digital.**
