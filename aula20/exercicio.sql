/* 1. Escreva uma consulta SQL para selecionar o departamento_id e a soma dos salários para cada departamento. Filtre os departamentos onde a soma total dos salários é maior que R$ 12.000,00.

2. Escreva uma consulta SQL para selecionar o titulo e o número de empregados para cada título. Filtre os títulos onde há mais de 2 empregados.

3. Escreva uma consulta SQL para selecionar o departamento_id e a média dos salários para cada departamento. Filtre os departamentos onde a média salarial é maior que R$ 4.500,00.

4. Escreva uma consulta SQL para selecionar o departamento_id e o maior salário para cada departamento. Filtre os departamentos onde o maior salário é superior a R$ 6.000,00.

5. Escreva uma consulta SQL para selecionar o departamento_id e o menor salário para cada departamento. Filtre os departamentos onde o menor salário é superior a R$ 2.500,00. */

----------------------------------------
-- 1. 

SELECT departamentos.nome, SUM(cargos.salario)
FROM empregados
JOIN cargos ON empregados.titulo = cargos.titulo
JOIN departamentos ON empregados.departamentosID = departamentos.departamentosID
GROUP BY departamentos.nome
HAVING SUM(cargos.salario)>12000.00;

----------------------------------------
-- 2.

SELECT empregados.titulo, COUNT(*)
FROM empregados
GROUP BY empregados.titulo
HAVING COUNT(*)>2;

----------------------------------------
-- 3.