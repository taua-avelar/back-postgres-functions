SELECT COUNT(medicamento) FROM farmacia;
SELECT MIN(AGE(CAST(cadastro AS timestamp))) FROM usuarios;
SELECT MAX(AGE(CAST(cadastro AS timestamp))) FROM usuarios;
SELECT AVG(idade) FROM usuarios WHERE idade >= 18;
SELECT SUM(estoque) FROM farmacia WHERE categoria = 'blue' OR categoria = 'black';
SELECT (categoria) FROM farmacia  WHERE categoria IS NOT NULL GROUP BY categoria;
SELECT SUM(estoque) FROM farmacia WHERE categoria IS NULL;
SELECT count(medicamento) FROM farmacia WHERE categoria IS NULL;
SELECT CONCAT(medicamento, ' (', categoria, ')') FROM farmacia;
SELECT CONCAT(id, ' - ', medicamento, ' (', COALESCE(categoria, 'Sem Categoria'), ')') FROM farmacia;
SELECT nome, idade, CAST(cadastro AS date) FROM usuarios WHERE cadastro LIKE '2020%' ;
SELECT nome, idade, email, AGE(CAST(cadastro AS timestamp)) FROM usuarios WHERE idade < 18;
SELECT nome, idade, email, AGE(CAST(cadastro AS date)) FROM usuarios WHERE idade >= 60;
SELECT categoria, COUNT(medicamento) FROM farmacia WHERE categoria IS NOT NULL GROUP BY categoria;
SELECT idade, COUNT(idade) FROM usuarios WHERE idade >=18 GROUP BY idade;
SELECT categoria, SUM(estoque) FROM farmacia GROUP BY categoria LIMIT 3