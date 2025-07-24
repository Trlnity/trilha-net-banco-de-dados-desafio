SELECT Nome, Ano, Duracao From Filmes.dbo.Filmes
Order By Ano ASC


SELECT Nome, Ano, Duracao From Filmes.dbo.Filmes
WHERE nome like '%De Volta%'

SELECT Nome, Ano, Duracao FROM Filmes.dbo.Filmes
WHERE Ano = 1997

SELECT Nome, Ano, Duracao FROM Filmes.dbo.Filmes
WHERE Ano > 2000

SELECT Nome, Ano, Duracao FROM Filmes.dbo.Filmes
WHERE Duracao BETWEEN 101 and 149
ORDER BY Duracao ASC


SELECT Filmes.Ano, COUNT(Filmes.Nome) As Quantidade 
FROM Filmes.dbo.Filmes
GROUP BY Filmes.Ano  
ORDER BY SUM(Filmes.Duracao) DESC

SELECT Atores.Id, Atores.PrimeiroNome, Atores.UltimoNome, Atores.Genero 
FROM Filmes.dbo.Atores
WHERE Atores.Genero = 'M';


SELECT Atores.Id, Atores.PrimeiroNome, Atores.UltimoNome, Atores.Genero 
FROM Filmes.dbo.Atores
WHERE Atores.Genero = 'F'
ORDER BY Atores.PrimeiroNome;

SELECT F.Nome, G.Genero
  FROM [Filmes].[dbo].[Filmes] F
  JOIN [Filmes].[dbo].[FilmesGenero] FG ON F.Id = FG.IdFilme
  JOIN [Filmes].[dbo].[Generos] G ON FG.IdGenero = G.Id;

  SELECT F.Nome, G.Genero
  FROM [Filmes].[dbo].[Filmes] F
  JOIN [Filmes].[dbo].[FilmesGenero] FG ON F.Id = FG.IdFilme
  JOIN [Filmes].[dbo].[Generos] G ON FG.IdGenero = G.Id
  WHERE G.Genero = 'Mistério';


  SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, E.Papel
  FROM [Filmes].[dbo].[Filmes] F 
  JOIN [Filmes].[dbo].[Atores] A On F.Id = A.Id
  JOIN [Filmes].[dbo].[ElencoFilme] E ON F.Id = E.IdAtor 
