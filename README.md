Sistema de Gestão de Biblioteca Universitária
Este projeto apresenta o desenvolvimento de um modelo de banco de dados relacional para uma biblioteca universitária, com o objetivo de proporcionar controle eficiente do acervo, empréstimos, reservas e multas. A solução foi concebida seguindo boas práticas de modelagem, normalização e segurança de dados, utilizando o MySQL como SGBD e Git para controle de versão.

Visão Geral
O sistema contempla as necessidades básicas e avançadas de uma biblioteca acadêmica, permitindo o registro e a gestão de usuários, livros, reservas, empréstimos e eventuais penalidades (multas). O controle do fluxo de informações garante rastreabilidade, organização e facilidade na geração de relatórios ou integração com sistemas futuros.

Estrutura do Projeto
Banco de Dados Relacional: Modelagem baseada em entidades como Usuário, Livro, Empréstimo, Reserva e Multa.

Integridade Referencial: Utilização de chaves primárias e estrangeiras para garantir integridade dos dados.

Automação de Processos: Trigger para atualização automática do status dos livros após devolução.

Controle de Versão: Gerenciamento do projeto por meio do Git, com organização dos scripts SQL e documentação em diferentes branches e commits descritivos.

Funcionalidades Principais
Cadastro e gestão de usuários com tipos diferenciados (aluno, professor, visitante).

Controle do acervo de livros com status de disponibilidade.

Registro de empréstimos e devoluções com acompanhamento de prazos.

Sistema de reservas e gerenciamento de fila.

Aplicação e controle de multas por atraso na devolução.

Consultas para acompanhamento do uso da biblioteca.

Como Utilizar
Clone este repositório e acesse os scripts SQL disponíveis na pasta /sql.

Importe ou execute os scripts no seu servidor MySQL (preferencialmente versão 8.0 ou superior).

Siga as orientações do manual do projeto para testar as operações de inserção, atualização, remoção e consultas.

Utilize o controle de versão para registrar melhorias, correções ou novas funcionalidades, mantendo o histórico organizado e transparente.

Estrutura Recomendada
/sql – Scripts de criação, inserção e manipulação do banco de dados.

/docs – Diagramas ER, documentação técnica e modelos de dados.

README.md – Manual do projeto, orientações e visão geral.

Contribuição
Contribuições são bem-vindas! Para colaborar, utilize pull requests, commits claros e abertos a revisão. Dúvidas e sugestões podem ser encaminhadas por issues ou pelo canal institucional.

Licença
Este projeto está sob a licença Creative Commons Attribution 4.0 International (CC BY 4.0).
