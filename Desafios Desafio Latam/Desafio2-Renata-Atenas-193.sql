-- Crear tabla e insertar datos.
CREATE TABLE INSCRITOS (
	CANTIDAD INT,
	FECHA DATE,
	FUENTE VARCHAR);
	
INSERT INTO INSCRITOS (CANTIDAD, FECHA, FUENTE) VALUES
	( 44, '01/01/2021', 'Blog' ),
	( 56, '01/01/2021', 'Página' ),
	( 39, '01/02/2021', 'Blog' ),
	( 81, '01/02/2021', 'Página' ),
	( 12, '01/03/2021', 'Blog' ),
	( 91, '01/03/2021', 'Página' ),
	( 48, '01/04/2021', 'Blog' ),
	( 45, '01/04/2021', 'Página' ),
	( 55, '01/05/2021', 'Blog' ),
	( 33, '01/05/2021', 'Página' ),
	( 18, '01/06/2021', 'Blog' ),
	( 12, '01/06/2021', 'Página' ),
	( 34, '01/07/2021', 'Blog' ),
	( 24, '01/07/2021', 'Página' ),
	( 83, '01/08/2021', 'Blog' ),
	( 99, '01/08/2021', 'Página' );

-- 1. ¿Cuántos registros hay?
SELECT COUNT(CANTIDAD) AS "Total registros" FROM INSCRITOS;

-- 2. ¿Cuántos inscritos hay en total?
SELECT SUM(CANTIDAD) AS "Total Personas Inscritas" FROM INSCRITOS;

-- 3. ¿Cuál o cuáles son los registros de mayor antigüedad?
SELECT * FROM INSCRITOS
WHERE FECHA = (
	SELECT MIN(FECHA)
	FROM INSCRITOS);

-- 4. ¿Cuántos inscritos hay por día? (entendiendo un día como una fecha distinta de ahora en adelante).
SELECT SUM(CANTIDAD) AS "Inscritos por día", FECHA
FROM INSCRITOS
GROUP BY FECHA
ORDER BY FECHA;

-- 5. ¿Qué día se inscribieron la mayor cantidad de personas y cuántas personas se inscribieron en ese día?
SELECT SUM(CANTIDAD) AS "Personas Inscritas", FECHA
FROM INSCRITOS
GROUP BY FECHA
ORDER BY "Personas Inscritas" DESC
LIMIT 1;
