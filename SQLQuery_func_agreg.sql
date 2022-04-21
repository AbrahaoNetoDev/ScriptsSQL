  select [Total] = Sum(v.Valor_Venda_Carro),
	     [Carro] = c.Nome_Carro,
         [Categoria] = t.Descricao
    From dbo.Vendas_Carros v,
	     dbo.Carros c,
	     dbo.Tipos_Carro t
   Where v.Id_Carro = c.Id_Carro
     and c.Id_Tipo_Carro = t.Id_Tipo_Carro
     and t.Descricao = 'SUV'
Group by c.Nome_Carro, t.Descricao


  select [Quant] = Count(v.Valor_Venda_Carro),
  	     [Carro] = c.Nome_Carro,
  	     [Categoria] = t.Descricao,
         [Status da Venda] = (case when v.Ativo_Venda_Carro = 0 then 'INATIVO' else 'ATIVO' end)
    From dbo.Vendas_Carros v,
    	 dbo.Carros c,
    	 dbo.Tipos_Carro t
   Where v.Id_Carro = c.Id_Carro
     and c.Id_Tipo_Carro = t.Id_Tipo_Carro
     and t.Descricao = 'HATCH' and v.Ativo_Venda_Carro = '0'
Group by c.Nome_Carro, 
	     t.Descricao, 
	     v.Ativo_Venda_Carro