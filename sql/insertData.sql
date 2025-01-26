-- Inserir autores
INSERT INTO authors (name, bio) VALUES
('Eiichiro Oda', 'Eiichiro Oda em um mangaká conhecido pela criação do mangá One Piece.'),
('J. K. Rowling', 'J. K. Rowling é uma escritora, roteirista e produtora cinematográfica britânica, notória por escrever a série de livros Harry Potter.'),
('Osvaldo Silva', 'Autor e compositor brasileiro.') RETURNING *;

-- Inserir livros
INSERT INTO books (name, pages, createdAt, updatedAt, authorId) VALUES
('Harry Potter', 325, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 2),
('Jogos Vorazes', 276, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, NULL),
('One Piece - Volume 1', 120, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, NULL),
('One Piece - Volume 2', 137, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, NULL) RETURNING *;

-- Inserir categorias
INSERT INTO categories (name, createdAt, updatedAt) VALUES
('Mangá', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Aventura', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Fantasia', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP) RETURNING *;

-- Inserir relacionamentos entre livros e categorias
INSERT INTO books_categories (book_id, category_id) VALUES
(1, 2), (2, 2), (3, 2), (4, 2),
(1, 3), (3, 3), (4, 3),
(3, 1), (4, 1) RETURNING *;

-- Inserir dados de contato
INSERT INTO contact_infos (phone, email, authorId) VALUES
('(44) 99123-4567', 'osvaldo@osvaldocompany.com', 3) RETURNING *;
