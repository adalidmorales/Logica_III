SubProceso Entradas(Nombre_participante Por Referencia,Area_curso Por Referencia, Costo_curso Por Referencia)
	Mostrar"Introduzca nombre del participante: " Sin saltar 
	Leer Nombre_participante
	Mostrar"Introduzca el area del curso: " Sin saltar 
	Leer Area_curso
	Mostrar "Introduzca el costo del curso: " Sin Saltar
	Leer Costo_curso
FinSubProceso

SubProceso Bloque_proceso(Costo_curso,Cuota_inicial Por Referencia, Cuota_mensual Por Referencia)
	Cuota_inicial<-Costo_curso*20/100
	Cuota_mensual<-(Costo_curso-Cuota_inicial)/24
FinSubProceso

SubProceso Salidas(Nombre_participante, Area_curso, Costo_curso, Cuota_mensual, Cuota_inicial)
	Mostrar Nombre_participante
	Mostrar Area_curso
	Mostrar "Costo completo del curso" Costo_curso "Bs.S"
	Mostrar "Cuota Inicial " Cuota_inicial " Bs.S"
	Mostrar "Cuota mensual " Cuota_mensual " Bs.S"
FinSubProceso

Algoritmo Decanato
	Definir Nombre_participante, Area_curso Como Caracter
	Definir Cuota_inicial,Cuota_mensual, Costo_curso Como Real
	Definir opc_menu como entero 
	Repetir
		Mostrar "Menú de opciones"
		Mostrar "1 - Leer datos"
		Mostrar "2 - Calculos"
		Mostrar "3 - Resultados"
		Mostrar "4 - Salir"
		Mostrar "Ingrese una opción...." Sin Saltar
		Leer opc_menu
		
		Segun opc_menu Hacer
			1:Entradas(Nombre_participante, Area_curso, Costo_curso )
			2:Bloque_proceso(Costo_curso,Cuota_inicial, Cuota_mensual)
			3:Salidas(Nombre_participante, Area_curso, Costo_curso, Cuota_mensual, Cuota_inicial)
			4: Mostrar "Usted se ha salido del menú de opciones" 
				De otro modo
				Mostrar "Debe ingresar una opción valida entre 1 y 4"
		FinSegun
		Si opc_menu=1 o opc_menu=2  
			entonces 
			Limpiar Pantalla
			Mostrar "Ultima opción seleccionada: " opc_menu
		FinSi
		Si opc_menu=3
			entonces 
			Mostrar "Presione cualquier tecla para volver al menú"
			Esperar Tecla
			Limpiar Pantalla
		FinSi
	Hasta Que opc_menu=4
	
FinAlgoritmo
