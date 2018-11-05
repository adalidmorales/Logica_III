Algoritmo sin_titulo
	Definir nomb_estudiante Como Caracter
	Definir nota, acum_seccion, acum_aprobados, acum_reprobados, cant_100 Como Real
	
	acum_reprobados=0
	acum_seccion=0
	acum_aprobados=0
	cant_100=0
	Para i=1 hasta 5 
		Mostrar "Ingrese el nombre del estudiante: "Sin Saltar
		leer nomb_estudiante
		Mostrar "Ingrese la nota del estudiante: "Sin Saltar
		Leer nota
		acum_seccion=acum_seccion+nota
		si nota=100 Entonces
			cant_100=cant_100+1
		finsi	
		si nota>=50 Entonces
				acum_aprobados=acum_aprobados+nota
			Sino
				Si nota<50 Entonces
					acum_reprobados=acum_reprobados+nota
				FinSi
			FinSi
	FinPara
	
	Mostrar "La cantidad de estudiantes con nota perfecta es: " cant_100 
	Mostrar "Acumulado de todas las notas de la sección es: " acum_seccion
	Mostrar "Acumulado de notas de estudiantes aprobados es: " acum_aprobados
	Mostrar "Acumulado de notas de estudiantes reprobados es: " acum_reprobados
	
	
FinAlgoritmo
