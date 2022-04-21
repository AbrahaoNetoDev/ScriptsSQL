select [Carro] = c.Nome_Carro, 
	   [Cor] = c.Cor_Carro, 
	   [Categoria] = tc.Descricao
    From dbo.Tipos_Carro tc,
	     dbo.Carros c
    where tc.Id_Tipo_Carro = c.Id_Tipo_Carro
	order by tc.Descricao


select [Carro] = c.Nome_Carro, 
	   [Categoria] = tc.Descricao
    From dbo.Tipos_Carro tc,
	     dbo.Carros c
	where tc.Id_Tipo_Carro = c.Id_Tipo_Carro
	  and tc.Descricao = 'HATCH' 
	order by c.Nome_Carro


select top 2 [Cor] = c.Cor_Carro,
           [Carro] = c.Nome_Carro, 
		   [Categoria] = tc.Descricao 
    From dbo.Tipos_Carro tc,
	     dbo.Carros c
    where tc.Id_Tipo_Carro = c.Id_Tipo_Carro
	  and c.Cor_Carro = 'Prata' 
	order by tc.Descricao

--select * from Carros

select [Status da Venda] = (case when v.Ativo_Venda_Carro = 0 then 'INATIVO' else  'ATIVO' end),
       [Carro] = c.Nome_Carro, 
	   [Cor] = c.Cor_Carro, 
	   [Categoria] = tc.Descricao, 
	   [Data da Venda] = v.Data_Venda_Carro,
	   [Preço] = v.Valor_Venda_Carro 
    From dbo.Vendas_Carros v,
	     dbo.Carros c,
	     dbo.Tipos_Carro tc
    where  v.Id_Carro = c.Id_Carro 
	   and c.Id_Tipo_Carro = tc.Id_Tipo_Carro 
	   and tc.Descricao = 'SUV'
	order by c.Nome_Carro

select [Data da Venda] = v.Data_Venda_Carro, 
       [Status da Venda] = (case when v.Ativo_Venda_Carro = 0 then 'INATIVO' else  'ATIVO' end),
	   [Carro] = c.Nome_Carro, 
	   [Categoria] = tc.Descricao
    From dbo.Vendas_Carros v,
	     dbo.Tipos_Carro tc,
		 dbo.Carros c
    where  v.Id_Carro = c.Id_Carro 
	  and c.Id_Tipo_Carro = tc.Id_Tipo_Carro 
	  and v.Ativo_Venda_Carro = 0 and tc.Descricao = 'SEDAN'
	order by v.Data_Venda_Carro 


select top 5 [Preço] = v.Valor_Venda_Carro,
           [Status da Venda] = (case when v.Ativo_Venda_Carro = 0 then 'INATIVO' else  'ATIVO' end), 
		   [Carro] = c.Nome_Carro
    From dbo.Vendas_Carros v,
	     dbo.Tipos_Carro tc,
		 dbo.Carros c
    where  v.Id_Carro = c.Id_Carro
	  and c.Id_Tipo_Carro = tc.Id_Tipo_Carro 
	  and v.Ativo_Venda_Carro = 1 
	order by v.Valor_Venda_Carro desc 

select [Preço] = v.Valor_Venda_Carro,
       [Status da Venda] = (case when v.Ativo_Venda_Carro = 0 then 'INATIVO' else  'ATIVO' end), 
	   [Carro] = c.Nome_Carro, 
	   [Data da Venda] = v.Data_Venda_Carro
    From dbo.Vendas_Carros v,
	     dbo.Tipos_Carro tc,
		 dbo.Carros c
    where  v.Id_Carro = c.Id_Carro 
	  and c.Id_Tipo_Carro = tc.Id_Tipo_Carro 
	  and v.Ativo_Venda_Carro = 1 
	  and year(v.Data_Venda_Carro) = 2010
	order by v.Valor_Venda_Carro desc

--select * from Vendas_Carros

select [Data da Venda] = v.Data_Venda_Carro,
       [Carro] = c.Nome_Carro,
	   [Categoria] = tc.Descricao
    From dbo.Vendas_Carros v,
	     dbo.Tipos_Carro tc,
		 dbo.Carros c
    where v.Id_Carro = c.Id_Carro 
	  and c.Id_Tipo_Carro = tc.Id_Tipo_Carro 
	  and v.Valor_Venda_Carro < 10000
	order by tc.Descricao

select [Status da Venda] = (case when v.Ativo_Venda_Carro = 0 then 'INATIVO' else 'ATIVO' end), 
       [Tipo de Carro] = tc.Descricao, 
	   [Carro] = c.Nome_Carro, 
	   [Data da Venda] = v.Data_Venda_Carro,
	   [Preço] = v.Valor_Venda_Carro
    From dbo.Vendas_Carros v,
	     dbo.Tipos_Carro tc,
		 dbo.Carros c
	where v.Id_Carro = c.Id_Carro 
	  and c.Id_Tipo_Carro = tc.Id_Tipo_Carro 
	  and v.Ativo_Venda_Carro = 1 
	  and tc.Descricao = 'HATCH'
	order by tc.Descricao, 
	         c.Nome_Carro, 
			 v.Data_Venda_Carro