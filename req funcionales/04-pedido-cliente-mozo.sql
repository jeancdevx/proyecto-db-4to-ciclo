-- Pedido 5
INSERT INTO PEDIDO (ID_PEDIDO, FECHA, ESTADO, ID_MOZO, NUMERO_MESA) 
VALUES ('P005', SYSDATE, 'Pendiente', 'MZ005', 5);

-- Comprobante para el pedido 5 (Boleta)
INSERT INTO COMPROBANTE (ID_COMPROBANTE, FECHA, TIPO_COMPROBANTE, ID_PEDIDO, ID_CLIENTE)
VALUES ('C005', SYSDATE, 'Boleta', 'P005', 'C006');

INSERT INTO BOLETA (NUMERO, ID_COMPROBANTE, DNI)
VALUES (3, 'C005', '34567890');