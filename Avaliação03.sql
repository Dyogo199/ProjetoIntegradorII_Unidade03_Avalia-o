-- 1. Criação das tabelas

CREATE TABLE Usuario (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    tipo_usuario ENUM('aluno', 'professor', 'visitante') DEFAULT 'aluno',
    data_cadastro DATE NOT NULL
);

CREATE TABLE Livro (
    id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(200) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    editora VARCHAR(100),
    ano_publicacao INT,
    categoria VARCHAR(50),
    status ENUM('disponivel', 'emprestado') DEFAULT 'disponivel'
);

CREATE TABLE Emprestimo (
    id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
    id_livro INT NOT NULL,
    id_usuario INT NOT NULL,
    data_emprestimo DATE NOT NULL,
    data_devolucao_prevista DATE,
    data_devolucao_real DATE,
    status ENUM('ativo', 'finalizado') DEFAULT 'ativo',
    FOREIGN KEY (id_livro) REFERENCES Livro(id_livro),
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

CREATE TABLE Reserva (
    id_reserva INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT NOT NULL,
    id_livro INT NOT NULL,
    data_reserva DATE NOT NULL,
    status_reserva ENUM('ativa', 'finalizada', 'cancelada') DEFAULT 'ativa',
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario),
    FOREIGN KEY (id_livro) REFERENCES Livro(id_livro)
);

CREATE TABLE Multa (
    id_multa INT PRIMARY KEY AUTO_INCREMENT,
    id_emprestimo INT NOT NULL,
    valor DECIMAL(8,2) NOT NULL,
    status_multa ENUM('pendente', 'paga') DEFAULT 'pendente',
    data_multa DATE NOT NULL,
    FOREIGN KEY (id_emprestimo) REFERENCES Emprestimo(id_emprestimo)
);

-- 2. Exemplo de trigger para atualizar status do livro ao devolver

DELIMITER $$
CREATE TRIGGER trg_devolucao
AFTER UPDATE ON Emprestimo
FOR EACH ROW
BEGIN
    IF NEW.data_devolucao_real IS NOT NULL THEN
        UPDATE Livro SET status = 'disponivel' WHERE id_livro = NEW.id_livro;
    END IF;
END $$
DELIMITER ;

-- 3. Inserção de dados de exemplo

INSERT INTO Usuario (nome, email, tipo_usuario, data_cadastro) VALUES
  ('João Silva', 'joao@email.com', 'aluno', CURDATE()),
  ('Maria Lima', 'maria@email.com', 'professor', CURDATE());

INSERT INTO Livro (titulo, autor, editora, ano_publicacao, categoria) VALUES
  ('Dom Casmurro', 'Machado de Assis', 'Globo', 1899, 'Romance'),
  ('O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 'Agir', 1943, 'Literatura');

INSERT INTO Emprestimo (id_livro, id_usuario, data_emprestimo, data_devolucao_prevista) VALUES
  (1, 1, CURDATE(), DATE_ADD(CURDATE(), INTERVAL 15 DAY));

INSERT INTO Reserva (id_usuario, id_livro, data_reserva) VALUES
  (2, 2, CURDATE());

INSERT INTO Multa (id_emprestimo, valor, data_multa) VALUES
  (1, 5.00, CURDATE());

-- 4. Consultas de exemplo

SELECT * FROM Usuario;
SELECT * FROM Livro;
SELECT * FROM Emprestimo;
SELECT * FROM Reserva;
SELECT * FROM Multa;
