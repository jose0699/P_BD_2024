/*                                        Seguridad                                                    */
---------------------------------------------------------------------------------------------------------
--								       CREACION ROLES   											   --
---------------------------------------------------------------------------------------------------------

	BEGIN; CREATE ROLE CLIENTE LOGIN; COMMIT;
	
	BEGIN; CREATE ROLE EMPLEADO LOGIN; COMMIT;
	BEGIN; CREATE ROLE OPERARIO LOGIN; COMMIT;
	BEGIN; CREATE ROLE HORNERO LOGIN; COMMIT;
	BEGIN; CREATE ROLE SUPERVISOR LOGIN; COMMIT;

	BEGIN; CREATE ROLE GERENTE LOGIN; COMMIT;
	BEGIN; CREATE ROLE GERENTE_PLANTA LOGIN; COMMIT;
	BEGIN; CREATE ROLE SECRETARIA LOGIN; COMMIT;

---------------------------------------------------------------------------------------------------------
--								      OTORGAR HERENCIA   											   --
---------------------------------------------------------------------------------------------------------

	BEGIN; ALTER ROLE EMPLEADO INHERIT; COMMIT;
	BEGIN; ALTER ROLE OPERARIO INHERIT; COMMIT;
	BEGIN; ALTER ROLE GERENTE INHERIT; COMMIT;

---------------------------------------------------------------------------------------------------------
--								       CREACION USUARIOS   											   --
---------------------------------------------------------------------------------------------------------

	BEGIN; CREATE USER María_González WITH PASSWORD '21474659'; COMMIT;  --1 
	BEGIN; CREATE USER Ana_Romero_Tules WITH PASSWORD '18934567'; COMMIT; --2
	BEGIN; CREATE USER Daniel_Guerrero  WITH PASSWORD '20876543'; COMMIT; --3

	BEGIN; CREATE USER Carlos_Torres WITH PASSWORD '27748963'; COMMIT; --4
	BEGIN; CREATE USER Luis_Blanco WITH PASSWORD '27474666';COMMIT; --5
	BEGIN; CREATE USER Carolina_Sánchez WITH PASSWORD '27474665'; COMMIT; --6
	BEGIN; CREATE USER María_González_López WITH PASSWORD '27474667'; COMMIT; --7
	BEGIN; CREATE USER Luis_Blanco_Fernández WITH PASSWORD '27441986'; COMMIT; --8
	BEGIN; CREATE USER Carlos_Blanco WITH PASSWORD '27365666';COMMIT; --9
	BEGIN; CREATE USER María_González_Suarez WITH PASSWORD '27364666'; COMMIT; --10
	BEGIN; CREATE USER Yuritza_Castillo WITH PASSWORD '27363666'; COMMIT; --11
	BEGIN; CREATE USER Luis_Blanco_Gutierrez WITH PASSWORD  '27362666'; COMMIT;--12

	BEGIN; CREATE USER Marcello_Servitad WITH PASSWORD '25474658'; COMMIT;--13
	BEGIN; CREATE USER Valentina_Harrison WITH PASSWORD '24485673'; COMMIT;--14
	BEGIN; CREATE USER Alejandro_Guzmán WITH PASSWORD '26321549' ; COMMIT;--15
	BEGIN; CREATE USER Sandra_Mendoza WITH PASSWORD '24210987' ; COMMIT;--16

	BEGIN; CREATE USER Ana_Romero_Flores WITH PASSWORD '27403661' ; COMMIT;--17
	BEGIN; CREATE USER Pedro_González WITH PASSWORD '23254321' ; COMMIT;--18

	BEGIN; CREATE USER Ana_Romero WITH PASSWORD '24360661'; COMMIT; --19
	BEGIN; CREATE USER Luis_Muñoz WITH PASSWORD '25147362'; COMMIT;--20

	BEGIN; CREATE USER Ana_Romero_Turmero WITH PASSWORD '27474661'; COMMIT; --21
	BEGIN; CREATE USER Carlos_Blanco_Montoya WITH PASSWORD '23372615' ; COMMIT;--22

	BEGIN; CREATE USER Ana_Romero_Texan WITH PASSWORD '28568661' ; COMMIT; --23
	BEGIN; CREATE USER María_Gómez WITH PASSWORD '28261548'; COMMIT;--24

	BEGIN; CREATE USER Pedro_López WITH PASSWORD '28474660'  ; COMMIT;--25
	BEGIN; CREATE USER Gabriela_Martínez WITH PASSWORD '28251432'; COMMIT;--26
	BEGIN; CREATE USER Luis_Ramírez WITH PASSWORD '22548736' ; COMMIT;--27
	BEGIN; CREATE USER Andrea_Guerrero WITH PASSWORD '24721369' ; COMMIT;--28
	BEGIN; CREATE USER Carlos_Suárez WITH PASSWORD '23832147'; COMMIT;--29
	BEGIN; CREATE USER Isabel_Muñoz WITH PASSWORD '24943258' ; COMMIT; --30
	BEGIN; CREATE USER Daniel_Romero WITH PASSWORD '24054369'; COMMIT;--31
	BEGIN; CREATE USER Jennifer_Gómez WITH PASSWORD '24165470'; COMMIT;--32
	BEGIN; CREATE USER José_López WITH PASSWORD '24276581'; COMMIT;--33
	BEGIN; CREATE USER María_Ramírez WITH PASSWORD '24387692' ; COMMIT;--34

	BEGIN; CREATE USER Paco_Gutierrez WITH PASSWORD '24474670' ; COMMIT;--35
	BEGIN; CREATE USER Ana_Suárez WITH PASSWORD '24509815' ; COMMIT;--36
	BEGIN; CREATE USER Juan_Muñoz WITH PASSWORD '27474663' ; COMMIT;--37
	BEGIN; CREATE USER Gabriela_Pérez WITH PASSWORD '26362516' ; COMMIT;--38

	BEGIN; CREATE USER Luis_Gómez WITH PASSWORD  '27273645' ; COMMIT;--39
	BEGIN; CREATE USER Andrea_Blanco WITH PASSWORD '24184756'; COMMIT;--40
	
	--CLIENTE
	BEGIN; CREATE USER Casa_Pakea WITH PASSWORD 'cliente1'; COMMIT;--1
	BEGIN; CREATE USER El_Leñador WITH PASSWORD 'cliente2'; COMMIT;--2
	BEGIN; CREATE USER Posada_Margot WITH PASSWORD 'cliente3'; COMMIT;--3
	BEGIN; CREATE USER Holiday_Inn_Hotel_Suites WITH PASSWORD 'cliente4'; COMMIT;--4
	BEGIN; CREATE USER Hard_Rock_Cafe_NY WITH PASSWORD 'cliente5'; COMMIT;--5
	BEGIN; CREATE USER Pearl_Urban_Lounge_Santo_Domingo WITH PASSWORD 'cliente6'; COMMIT;--6
	BEGIN; CREATE USER Cayo_Levantado_Resort WITH PASSWORD 'cliente7'; COMMIT;--7
	BEGIN; CREATE USER Maxima_Marea WITH PASSWORD 'cliente8'; COMMIT;--8
	BEGIN; CREATE USER La_Santa_Guadalupe_Medellin WITH PASSWORD 'cliente9'; COMMIT;--9
	BEGIN; CREATE USER Dona_Firmina WITH PASSWORD 'cliente10'; COMMIT;--10
	BEGIN; CREATE USER Vista_Cafe WITH PASSWORD 'cliente11'; COMMIT;--11
	BEGIN; CREATE USER Oporto_Cafe WITH PASSWORD 'cliente12'; COMMIT;--12
	BEGIN; CREATE USER Zanzibar WITH PASSWORD 'cliente13'; COMMIT;--13
	
---------------------------------------------------------------------------------------------------------
--								 OTORGAR ROLES USUARIOS   											   --
---------------------------------------------------------------------------------------------------------

	BEGIN; GRANT GERENTE TO María_González; COMMIT;  --1 
	BEGIN; GRANT GERENTE_PLANTA TO Ana_Romero_Tules; COMMIT; --2
	BEGIN; GRANT GERENTE TO Daniel_Guerrero; COMMIT; --3

	BEGIN; GRANT SUPERVISOR TO Carlos_Torres; COMMIT; --4
	BEGIN; GRANT SUPERVISOR TO Luis_Blanco; COMMIT; --5
	BEGIN; GRANT SUPERVISOR TO Carolina_Sánchez; COMMIT; --6
	BEGIN; GRANT SUPERVISOR TO María_González_López; COMMIT; --7
	BEGIN; GRANT SUPERVISOR TO Luis_Blanco_Fernández; COMMIT; --8
	BEGIN; GRANT SUPERVISOR TO Carlos_Blanco;COMMIT; --9
	BEGIN; GRANT SUPERVISOR TO  María_González_Suarez; COMMIT; --10
	BEGIN; GRANT SUPERVISOR TO Yuritza_Castillo; COMMIT; --11
	BEGIN; GRANT SUPERVISOR TO Luis_Blanco_Gutierrez; COMMIT;--12

	BEGIN; GRANT SECRETARIA TO Marcello_Servitad; COMMIT;--13
	BEGIN; GRANT SECRETARIA TO Valentina_Harrison; COMMIT;--14
	BEGIN; GRANT SECRETARIA TO Alejandro_Guzmán; COMMIT;--15
	BEGIN; GRANT SECRETARIA TO Sandra_Mendoza; COMMIT;--16

	BEGIN; GRANT EMPLEADO TO Ana_Romero_Flores; COMMIT;--17
	BEGIN; GRANT EMPLEADO TO Pedro_González; COMMIT;--18

	BEGIN; GRANT EMPLEADO TO Ana_Romero; COMMIT; --19
	BEGIN; GRANT EMPLEADO TO Luis_Muñoz; COMMIT;--20

	BEGIN; GRANT OPERARIO TO Ana_Romero_Turmero; COMMIT; --21
	BEGIN; GRANT OPERARIO TO Carlos_Blanco_Montoya; COMMIT;--22

	BEGIN; GRANT OPERARIO TO Ana_Romero_Texan; COMMIT; --23
	BEGIN; GRANT OPERARIO TO María_Gómez; COMMIT;--24

	BEGIN; GRANT OPERARIO TO Pedro_López; COMMIT;--25
	BEGIN; GRANT OPERARIO TO Gabriela_Martínez; COMMIT;--26
	BEGIN; GRANT OPERARIO TO Luis_Ramírez; COMMIT;--27
	BEGIN; GRANT OPERARIO TO Andrea_Guerrero; COMMIT;--28
	BEGIN; GRANT OPERARIO TO Carlos_Suárez; COMMIT;--29
	BEGIN; GRANT OPERARIO TO Isabel_Muñoz; COMMIT; --30
	BEGIN; GRANT OPERARIO TO Daniel_Romero; COMMIT;--31
	BEGIN; GRANT OPERARIO TO Jennifer_Gómez; COMMIT;--32
	BEGIN; GRANT OPERARIO TO José_López; COMMIT;--33
	BEGIN; GRANT OPERARIO TO María_Ramírez; COMMIT;--34

	BEGIN; GRANT HORNERO TO Paco_Gutierrez; COMMIT;--35
	BEGIN; GRANT HORNERO TO Ana_Suárez; COMMIT;--36
	BEGIN; GRANT HORNERO TO Juan_Muñoz; COMMIT;--37
	BEGIN; GRANT HORNERO TO Gabriela_Pérez; COMMIT;--38

	BEGIN; GRANT OPERARIO TO Luis_Gómez; COMMIT;--39
	BEGIN; GRANT OPERARIO TO Andrea_Blanco; COMMIT;--40
	
	--CLIENTE
	BEGIN; GRANT CLIENTE TO Casa_Pakea; COMMIT;--1
	BEGIN; GRANT CLIENTE TO El_Leñador; COMMIT;--2
	BEGIN; GRANT CLIENTE TO Posada_Margot; COMMIT;--3
	BEGIN; GRANT CLIENTE TO Holiday_Inn_Hotel_Suites; COMMIT;--4
	BEGIN; GRANT CLIENTE TO Hard_Rock_Cafe_NY; COMMIT;--5
	BEGIN; GRANT CLIENTE TO Pearl_Urban_Lounge_Santo_Domingo; COMMIT;--6
	BEGIN; GRANT CLIENTE TO Cayo_Levantado_Resort; COMMIT;--7
	BEGIN; GRANT CLIENTE TO Maxima_Marea; COMMIT;--8
	BEGIN; GRANT CLIENTE TO La_Santa_Guadalupe_Medellin; COMMIT;--9
	BEGIN; GRANT CLIENTE TO Dona_Firmina; COMMIT;--10
	BEGIN; GRANT CLIENTE TO Vista_Cafe; COMMIT;--11
	BEGIN; GRANT CLIENTE TO Oporto_Cafe; COMMIT;--12
	BEGIN; GRANT CLIENTE TO Zanzibar; COMMIT;--13
	
---------------------------------------------------------------------------------------------------------
--								       PRIVILEGIOS ROLES   											   --
---------------------------------------------------------------------------------------------------------
--                                     ROLES CON HERENCIA                                              --
--EMPLEADO
	BEGIN; GRANT SELECT ON DEPARTAMENTO TO EMPLEADO; COMMIT;
	BEGIN; GRANT SELECT ON DET_EXP TO EMPLEADO; COMMIT; 
	BEGIN; GRANT SELECT ON ESTADO_SALUD TO EMPLEADO; COMMIT; 
	BEGIN; GRANT SELECT ON EMPLEADO TO EMPLEADO; COMMIT;
	BEGIN; GRANT SELECT ON E_E TO EMPLEADO; COMMIT; 
	
	BEGIN; GRANT EMPLEADO TO OPERARIO, GERENTE; COMMIT;
	
--OPERARIO
	BEGIN; GRANT SELECT ON INASISTENCIA TO OPERARIO; COMMIT;
	BEGIN; GRANT SELECT ON REUNION TO OPERARIO; COMMIT; 
	
	BEGIN; GRANT OPERARIO TO HORNERO, SUPERVISOR; COMMIT;

--GERENTE
	BEGIN; GRANT SELECT ON DETALLE_PIEZA_VAJILLA TO GERENTE; COMMIT;
	BEGIN; GRANT SELECT ON FAMILIAR_HISTORICO_PRECIO TO GERENTE; COMMIT;
	BEGIN; GRANT SELECT ON PIEZA TO GERENTE; COMMIT;
	BEGIN; GRANT SELECT ON VAJILLA TO GERENTE; COMMIT;
	BEGIN; GRANT SELECT ON COLECCION TO GERENTE; COMMIT;
	BEGIN; GRANT SELECT ON MOLDE TO GERENTE; COMMIT;
	
	BEGIN; GRANT SELECT ON CLIENTE TO GERENTE; COMMIT;
	BEGIN; GRANT SELECT ON PEDIDO TO GERENTE; COMMIT;
	BEGIN; GRANT SELECT ON FACTURA TO GERENTE; COMMIT;
	BEGIN; GRANT SELECT ON CONTRATO TO GERENTE; COMMIT;
	BEGIN; GRANT SELECT ON DETALLE_PEDIDO_PIEZA TO GERENTE; COMMIT;

	BEGIN; GRANT SELECT ON PAIS TO GERENTE; COMMIT;
	BEGIN; GRANT SELECT ON NOMBRES_MOLDES TO GERENTE; COMMIT;

	BEGIN; GRANT GERENTE TO SECRETARIA, GERENTE_PLANTA; COMMIT;
	
---------------------------------------------------------------------------------------------------------
--                                     ROLES SIN HERENCIA                                              --

--CLIENTE
	BEGIN; GRANT SELECT ON CLIENTE TO CLIENTE; COMMIT;
	BEGIN; GRANT SELECT ON FACTURA TO CLIENTE; COMMIT;
	BEGIN; GRANT SELECT ON CONTRATO TO CLIENTE; COMMIT;
	BEGIN; GRANT INSERT, SELECT ON PEDIDO TO CLIENTE; COMMIT;
	BEGIN; GRANT INSERT, SELECT ON DETALLE_PEDIDO_PIEZA TO CLIENTE; COMMIT;
	BEGIN; GRANT SELECT ON DETALLE_PIEZA_VAJILLA TO CLIENTE; COMMIT;
	BEGIN; GRANT SELECT ON FAMILIAR_HISTORICO_PRECIO TO CLIENTE; COMMIT;
	BEGIN; GRANT SELECT ON PIEZA TO CLIENTE; COMMIT;
	BEGIN; GRANT SELECT ON VAJILLA TO CLIENTE; COMMIT;
	BEGIN; GRANT SELECT ON COLECCION TO CLIENTE; COMMIT;
	BEGIN; GRANT SELECT ON MOLDE TO CLIENTE; COMMIT;
	BEGIN; GRANT SELECT ON NOMBRES_MOLDES TO CLIENTE; COMMIT;
	
--HORNERO
	BEGIN; GRANT SELECT ON HIST_TURNO TO HORNERO; COMMIT;
	
--SUPERVISOR
	BEGIN; GRANT INSERT ON REUNION TO SUPERVISOR; COMMIT;
	BEGIN; GRANT INSERT ON INASISTENCIA TO SUPERVISOR; COMMIT;
	BEGIN; GRANT INSERT, SELECT ON DET_EXP TO SUPERVISOR; COMMIT;

--SECRETARIA
	BEGIN; GRANT INSERT, UPDATE(FECHA_HORA_FIN) ON CONTRATO TO SECRETARIA; COMMIT;
	BEGIN; GRANT INSERT, UPDATE(FECHA_ENTREGA, ESTADO) ON PEDIDO TO SECRETARIA; COMMIT;
	BEGIN; GRANT INSERT ON FACTURA TO SECRETARIA; COMMIT;
	BEGIN; GRANT INSERT ON CLIENTE TO SECRETARIA; COMMIT;
	BEGIN; GRANT SELECT, USAGE ON SEQUENCE cliente_uid_seq TO SECRETARIA; COMMIT;
	BEGIN; GRANT SELECT, USAGE ON SEQUENCE pedido_uid_seq TO SECRETARIA; COMMIT;
	BEGIN; GRANT SELECT, USAGE ON SEQUENCE contrato_uid_seq TO SECRETARIA; COMMIT;
	
--GERENTE_PLANTA
	BEGIN; GRANT INSERT ON PIEZA TO GERENTE_PLANTA; COMMIT;
	BEGIN; GRANT INSERT ON VAJILLA TO GERENTE_PLANTA; COMMIT;
	BEGIN; GRANT INSERT ON DETALLE_PIEZA_VAJILLA TO GERENTE_PLANTA; COMMIT;
	BEGIN; GRANT INSERT ON COLECCION TO GERENTE_PLANTA; COMMIT;
	BEGIN; GRANT INSERT ON FACTURA TO GERENTE_PLANTA; COMMIT;

	BEGIN; GRANT INSERT, UPDATE(FECHA_HORA_FIN) ON CONTRATO TO GERENTE_PLANTA; COMMIT;
	BEGIN; GRANT INSERT, UPDATE(FECHA_FIN), SELECT ON FAMILIAR_HISTORICO_PRECIO TO GERENTE_PLANTA; COMMIT;
	BEGIN; GRANT INSERT, UPDATE(FECHA_ENTREGA, ESTADO) ON PEDIDO TO GERENTE_PLANTA; COMMIT;
	
	BEGIN; GRANT SELECT, USAGE ON SEQUENCE pieza_uid_seq TO GERENTE_PLANTA; COMMIT;
	BEGIN; GRANT SELECT, USAGE ON SEQUENCE coleccion_uid_seq TO GERENTE_PLANTA; COMMIT;
	BEGIN; GRANT SELECT, USAGE ON SEQUENCE vajilla_uid_seq TO GERENTE_PLANTA; COMMIT;

	BEGIN; GRANT SELECT, USAGE ON SEQUENCE factura_uid_seq TO GERENTE_PLANTA; COMMIT;
	BEGIN; GRANT SELECT, USAGE ON SEQUENCE pedido_uid_seq TO GERENTE_PLANTA; COMMIT;
	BEGIN; GRANT SELECT, USAGE ON SEQUENCE contrato_uid_seq TO GERENTE_PLANTA; COMMIT;
	
--TECNICO
	BEGIN; GRANT SELECT ON REUNION TO Daniel_Guerrero; COMMIT;
	BEGIN; GRANT SELECT ON INASISTENCIA TO Daniel_Guerrero; COMMIT;
	BEGIN; GRANT INSERT, SELECT ON HIST_TURNO TO Daniel_Guerrero; COMMIT;
	BEGIN; GRANT INSERT ON DET_EXP TO Daniel_Guerrero; COMMIT;

