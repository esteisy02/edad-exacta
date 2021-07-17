Proceso Edad_Exacta
	Definir Edad, AnioActual, MesActual, DiaActual Como entero;
	Definir AnioNacimiento, MesNacimiento, DiaNacimiento Como entero;
	Definir nombre Como Caracter;
	Definir dias, Meses, nueva_edad Como Entero;
	Escribir "ingresa tu nombre";
	Leer nombre;
	
	AnioActual<-2021;
	MesActual<-7;
	DiaActual<-19;
	nueva_edad<-0;
	
	// Capturamos datos de entrada
	Escribir "Ingrese su fecha de nacimiento en año, mes y dìa";
	AnioNacimiento<-validarDato ();
	MesNacimiento<-validarDato();
	DiaNacimiento<-validarDato();
	
	Repetir
		Si (AnioNacimiento<1890) O (AnioNacimiento>AnioActual) Entonces
			Borrar Pantalla;
			Escribir "ingrese nuevamente su año de nacimiento";
			Leer AnioNacimiento;
		FinSi
		
		
	Hasta Que AnioNacimiento>=1890 o AnioNacimiento<=2021
	
	Repetir
		si MesNacimiento<1 o MesNacimiento>12 Entonces
			Borrar Pantalla;
			Escribir "ingrese nuevamente su mes de nacimiento";
			Leer MesNacimiento;
		FinSi
	Hasta Que MesNacimiento>=1 o MesNacimiento<=12;
	
	si MesNacimiento>MesActual Entonces
		Edad <- edad-1;
	SiNo
		si MesActual==MesNacimiento Entonces
			si MesNacimiento>MesActual Entonces
				
				Edad <- edad-1;
			FinSi
			si DiaActual=DiaNacimiento Entonces
				Escribir "Felicidades está cumpliendo años";
			FinSi
		FinSi
	FinSi
	
	
	si MesNacimiento>MesActual Entonces
		Meses <-12+MesActual-MesNacimiento;
	FinSi
	
	Repetir
		si DiaNacimiento>31 y DiaNacimiento<1 Entonces
			Escribir "ingrese nuevamente su día de nacimiento";
			Leer DiaNacimiento;
		FinSi
	Hasta Que DiaNacimiento<=31 y DiaNacimiento>=1
	
	edad <- AnioActual-AnioNacimiento;
	Meses<-MesActual-MesNacimiento;
	dias <- DiaActual-DiaNacimiento;
	
	
	Escribir nombre, " Tu edad actual es: " , edad," Años ";
	Escribir  Meses ," Meses ";
	Escribir   dias ," Dias ";
	
	
	
	
	
FinProceso
SubProceso dato<-validarDato()
	Definir num,sub_cadena Como Cadena;
	Definir validarNum Como Logico;
	Definir long,j, dato Como Entero;
	
	Repetir
		//Escribir "Ingrese un numero";
		Leer num;
		
		long<-Longitud(num);
		validarNum<-Verdadero;
		
		Para j<-0 Hasta long-1 Con Paso 1 Hacer
			sub_cadena<-Subcadena(num,j,j);
			
			Si sub_cadena<>'0' Y sub_cadena<>'1' Y sub_cadena<>'2' Y sub_cadena<>'3' Y sub_cadena<>'4' Y sub_cadena<>'5' Y sub_cadena<>'6' Y sub_cadena<>'7' Y sub_cadena<>'8' Y sub_cadena<>'9' Entonces
				validarNum<-Falso;
			FinSi
			
		FinPara
		
		Si validarNum==Falso Entonces
			Escribir "Se requiere un numero Entero, por favor vuelva a intentarlo";
		FinSi
	Hasta Que validarNum==Verdadero
	
	dato<-ConvertirANumero(num);
FinSubProceso