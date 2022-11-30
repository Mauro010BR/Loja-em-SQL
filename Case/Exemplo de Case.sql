SELECT FirstName,MiddleName,LastName,
case when FirstName = 'Ken' then 0.3
	 when FirstName = 'Terri' then 0.3
else 0 end as Desconto 
from person.person
ORDER BY Desconto DESC

SELECT CHOOSE(datepart(month,sellStartDate),'Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro') as "Mês",
SUM(case when ListPrice > 100 then 1 else 0 end) as "Gastos Altos",
SUM(case when ListPrice < 100 then 1 else 0 end) as "Gastos Baixos"
from production.product
GROUP BY datepart(month,sellStartDate)

