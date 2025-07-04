📚 Sistema de Gestão de Biblioteca Universitária
Bem-vindo ao repositório do Sistema de Gestão de Biblioteca Universitária! Este projeto propõe uma solução robusta, escalável e moderna para o gerenciamento de acervo, usuários, empréstimos, reservas e multas em ambientes acadêmicos.

✨ Visão Geral
O sistema foi cuidadosamente modelado e implementado em MySQL, incorporando os princípios de integridade, segurança e normalização de dados. O uso do Git assegura um desenvolvimento colaborativo, seguro e transparente, com histórico completo de alterações e versionamento eficiente.

🏗️ Estrutura do Projeto
Modelagem Relacional Completa: Entidades essenciais como Usuário, Livro, Empréstimo, Reserva e Multa, refletindo as demandas de uma biblioteca universitária.

Integridade e Automação: Chaves primárias/estrangeiras e regras automatizadas (triggers) para atualização do status dos livros.

Scripts Organizados: Diretórios separados para scripts SQL, documentação e diagramas.

Documentação Clara: Este README e demais documentos facilitam o entendimento e a expansão do projeto.

⚙️ Funcionalidades
Cadastro e classificação de usuários (aluno, professor, visitante).

Controle detalhado do acervo de livros, com status de disponibilidade e histórico de circulação.

Gerenciamento completo de empréstimos e devoluções, com prazos e acompanhamento.

Sistema de reservas, com fila e controle de prioridade.

Cálculo e registro automático de multas por atraso.

Consultas avançadas para administração e geração de relatórios.

🚀 Como Utilizar
Clone o repositório:
git clone https://github.com/seuusuario/projeto-biblioteca-bd.git

Importe os scripts SQL na sua instância MySQL (8.0+ recomendado).

Execute operações CRUD (inserção, consulta, atualização e remoção) de acordo com as orientações nos scripts e na documentação.

Versione suas alterações utilizando as melhores práticas do Git, com commits claros e organização em branches.

🗂️ Estrutura Recomendada de Pastas
pgsql
Copiar
Editar
📁 sql/       → Scripts SQL de criação, inserção e manipulação.
📁 docs/      → Diagramas ER, modelos e documentação técnica.
📄 README.md  → Visão geral e instruções do projeto.
🤝 Contribuição
Contribuições são muito bem-vindas!
Siga estas diretrizes:

Crie branchs descritivas para novas features.

Envie pull requests detalhados.

Mantenha as mensagens de commit claras e objetivas.

Consulte os diagramas e documentação antes de propor alterações estruturais.

📄 Licença
Licenciado sob Creative Commons Attribution 4.0 International (CC BY 4.0).

💡 Sobre
Este projeto faz parte do desenvolvimento acadêmico em Banco de Dados e Controle de Versão, e pode ser expandido para aplicações reais em bibliotecas universitárias.
Para dúvidas, sugestões ou colaboração, utilize as issues do repositório ou entre em contato via e-mail institucional.

