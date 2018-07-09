-- Query for itens sold in invoice (for SAP B1)
-- Bruno Fagundes

SELECT 	 T0.[DocEntry]
		,T0.[DocDate]
		,T1.[ItemCode]
		,T1.[Dscription]
		,T1.[Quantity]

FROM 	 OINV T0  
INNER JOIN INV1 T1 
	ON	 T0.[DocEntry] = T1.[DocEntry] 

WHERE 	T1.[ItemCode] =[%0] 
	-- BETWEEN not working with params
	AND T0.[DocDate] >= [%1] 
	AND T0.[DocDate] <= [%2]
