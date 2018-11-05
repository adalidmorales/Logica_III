SubProceso Cargar_Arr_Notas(Nota1P por Referencia,Nota2P por Referencia)
	Para i=1 hasta 5
		Mostrar "Ingrese las notas del I parcial" Sin Saltar
		Leer Nota1P[i]
		Mostrar "Ingrese las notas del II parcial" Sin Saltar
		Leer Nota2P[i]
	FinPara
FinSubProceso
Funcion  promedio<- calcular_promedio(num,acumulador)
	promedio = acumulador / num
FinFuncion
SubProceso Acum_Notas(Nota1P,Nota2P,Nota_Acum por referencia,promedio Por Referencia)
	Para i=1 hasta 5
		Nota_Acum[i]=Nota1P[i]+Nota2P[i]
		promedio[i] = calcular_promedio(2,Nota_Acum[i])
	FinPara	
FinSubProceso
Funcion prom_mayor<- asignar_mayores(promedio)
	promedio_mayor = promedio[1]
	Para i<-1 Hasta 5
		si promedio[i] > promedio_mayor
			prom_menor<- promedio[i]
		FinSi
	FinPara
FinSubProceso
Funcion prom_menor<- asignar_menores(promedio)
	prom_menor = promedio[1]
	Para i<-1 Hasta 5
		si promedio[i] >= promedio_menor
			prom_menor<- promedio[i]
		FinSi
	FinPara
FinSubProceso
SubProceso notas(promedio, promedio_mayor Por Referencia, promedio_menor Por Referencia)
	promedio_mayor = asignar_mayores(promedio)
	promedio_menor = asignar_menores(promedio)
FinSubProceso
Subproceso Mostrar_Acum_Notas(Nota_Acum, promedio, promedio_mayor, promedio_menor)
	Para i= 1 hasta 5 
		Mostrar "Estudiante Nº " i " > Nota acumulada " Nota_Acum[i] " Nota promedio: " promedio[i]
		Mostrar ""
	FinPara
	Mostrar "El promedio menor es: " promedio_menor
	Mostrar "El promedio mayor es: " promedio_mayor
FinSubProceso

Algoritmo sin_titulo
	Definir nombre Como Caracter
	Dimension Nota1P[5],Nota2P[5],Nota_Acum[5], promedio[5]
	Mostrar "Ingrese la información del" i "º estudiante:"
	Mostrar "Ingrese el nombre: " Sin saltar
	Leer nombre
	Cargar_Arr_Notas(Nota1P,Nota2P)
	Acum_Notas(Nota1P,Nota2P,Nota_Acum,promedio)
	notas(promedio,promedio_mayor,promedio_menor)
	Mostrar_Acum_Notas(Nota_Acum, promedio,promedio_mayor,promedio_menor)
	
FinAlgoritmo
