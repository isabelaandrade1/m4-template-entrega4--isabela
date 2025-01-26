-- Leitura de todos os livros
SELECT * FROM books;

-- Leitura de todos os livros da categoria "Fantasia"
SELECT b.* FROM books b
JOIN books_categories bc ON b.id = bc.book_id
JOIN categories c ON bc.category_id = c.id
WHERE c.name = 'Fantasia';

-- Leitura de todos os livros com categorias
SELECT b.name AS book_name, c.name AS category_name
FROM books b
JOIN books_categories bc ON b.id = bc.book_id
JOIN categories c ON bc.category_id = c.id;

-- Leitura de "Harry Potter" com informações do autor
SELECT b.name AS book_name, a.name AS author_name, a.bio
FROM books b
JOIN authors a ON b.authorId = a.id
WHERE b.name = 'Harry Potter';
