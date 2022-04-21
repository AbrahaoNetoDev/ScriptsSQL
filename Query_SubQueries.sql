    Select [Carro] = c.Nome_Carro,
           [Venda Ativa] = v.Valor_Venda_Carro 
      From dbo.Vendas_Carros v
inner join dbo.Carros c On v.Id_Carro = c.Id_Carro
     Where v.Valor_Venda_Carro = (Select [Valor_Venda_Carro] = Max(vc.Valor_Venda_Carro) From dbo.Vendas_Carros vc)


    Select [Carro] = c.Nome_Carro,
           [Venda Inativa] = v.Valor_Venda_Carro 
      From dbo.Vendas_Carros v
inner join dbo.Carros c On v.Id_Carro = c.Id_Carro
     Where v.Valor_Venda_Carro = (Select [Valor_Venda_Carro] = Min(vc.Valor_Venda_Carro) From dbo.Vendas_Carros vc)


 select [Média de Vendas Ativas] = avg(v.Id_Venda_Carro)
   from dbo.Vendas_Carros v
  where v.Ativo_Venda_Carro = 1

 select [Média de Vendas Inativas] = avg(v.Id_Venda_Carro)
   from dbo.Vendas_Carros v
  where v.Ativo_Venda_Carro = 0


    select [Quant] = Count(v.Id_Venda_Carro),
	       [Média de Vendas] = Avg(v.Valor_Venda_Carro)
      From dbo.Vendas_Carros v
     Where year(v.Data_Venda_Carro) = 2010


   select v.* from dbo.Carros v
   select v.* from dbo.Vendas_Carros v where v.Id_Carro = 5

   select Avg(v.Valor_Venda_Carro) from dbo.Vendas_Carros v Where year(v.Data_Venda_Carro) = 2010 --where v.Id_Carro = 5
   select count(v.Id_Venda_Carro) from dbo.Vendas_Carros v  Where year(v.Data_Venda_Carro) = 2010 --where v.Id_Carro = 5

    select [Nome] = c.Nome_Carro, 
	       [Cor] = c.Cor_Carro,
		   [Categoria] = t.Descricao
      from dbo.Vendas_Carros v
inner join dbo.Carros c      On v.Id_Carro = c.Id_Carro 
inner join dbo.Tipos_Carro t On c.Id_Tipo_Carro = t.Id_Tipo_Carro
     where v.Id_Carro not in (select v.Id_Venda_Carro)
	 order by c.Nome_Carro, c.Cor_Carro, t.Descricao


	 select * from dbo.Carros
	 select * from dbo.Vendas_Carros

	 select * from dbo.Vendas_Carros v  in (select Id_Venda_Carro from dbo.Vendas_Carros)
	 
	 
 select * from dbo.Carros c where c.Id_Carro not in (select v.Id_Carro from dbo.Vendas_Carros v)

	 select count(v.Id_Venda_Carro) from dbo.Vendas_Carros v where v.Ativo_Venda_Carro = 1
	 select sum(v.Id_Venda_Carro) from dbo.Vendas_Carros v where v.Ativo_Venda_Carro = 1
	 
	 	select [Nome] = c.Nome_Carro, 
	       [Cor] = c.Cor_Carro,
		   [Categoria] = t.Descricao
      from dbo.Carros c 
inner join dbo.Tipos_Carro t    On c.Id_Tipo_Carro = t.Id_Tipo_Carro
     where c.Id_Carro not in (select v.Id_Carro from dbo.Vendas_Carros v)
  order by c.Nome_Carro, c.Cor_Carro, t.Descricao