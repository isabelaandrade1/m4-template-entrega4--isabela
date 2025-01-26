-- Atualizar o nome do livro "Harry Potter"
UPDATE books SET name = 'Harry Potter e o Prisioneiro de Azkaban' WHERE name = 'Harry Potter';

-- Atualizar autor de One Piece
UPDATE books SET authorId = 1 WHERE name LIKE 'One Piece%';
