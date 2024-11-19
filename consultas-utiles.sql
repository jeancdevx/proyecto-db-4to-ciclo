-- obtener el total de clientes: general, natural, juridico e imparcial (o sea 'ambos')
SELECT
	COUNT(*) AS TOTAL_CLIENTES,
	COUNT(
		CASE
			WHEN TIPO_CLIENTE = 'Natural' THEN
				1
		END)    AS CLIENTES_NATURALES,
	COUNT(
		CASE
			WHEN TIPO_CLIENTE = 'Juridico' THEN
				1
		END)    AS CLIENTES_JURIDICOS,
	COUNT(
		CASE
			WHEN TIPO_CLIENTE = 'Ambos' THEN
				1
		END)    AS CLIENTES_IMPARCIALES
FROM
	CLIENTE;

-- obtener el total de ventas por tipo de comprobante
SELECT
	TIPO_COMPROBANTE,
	SUM(TOTAL)       AS TOTAL_VENTAS
FROM
	COMPROBANTE
GROUP BY
	TIPO_COMPROBANTE;

-- obtener el total de ventas por mozo
SELECT
	M.NOMBRE
	|| ' '
	|| M.APELLIDO AS MOZO,
	SUM(C.TOTAL)  AS TOTAL_VENTAS
FROM
	COMPROBANTE C
	JOIN PEDIDO P
	ON C.ID_PEDIDO = P.ID_PEDIDO
	JOIN MOZO M
	ON P.ID_MOZO = M.ID_MOZO
GROUP BY
	M.NOMBRE,
	M.APELLIDO;

-- mas proximamente