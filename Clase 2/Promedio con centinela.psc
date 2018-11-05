Algoritmo sin_titulo
	Definir nota,nota_prom,acum_notas Como real
	definir cont_notas como entero
	
	nota=0
	acum_notas=0
	cont_notas=0
	Mientras nota<>-99 Hacer
		Mostrar "Ingrese la nota del alumno: " Sin saltar
		Leer nota
		si nota<>-99 Entonces
			acum_notas=acum_notas+nota
			cont_notas= cont_notas+1
		FinSi
	FinMientras
	Limpiar Pantalla
	si cont_notas>0 
		Entonces
		nota_prom=acum_notas/cont_notas
			Sino
			nota_prom=0
	FinSi
	Mostrar "El promedio de nota es: " nota_prom
	
FinAlgoritmo
