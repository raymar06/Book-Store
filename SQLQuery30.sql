USE [JamnVape]
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetAllProductsInfo]    Script Date: 14/02/2017 6:11:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[Sp_GetAllProductsInfo]
as 
select * from ProductInfo where ProdQuantity > 0
return