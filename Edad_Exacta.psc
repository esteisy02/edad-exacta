Proceso Edad_Exacta
	Definir Edad, AnioActual, MesActual, DiaActual Como entero;
	Definir AnioNacimiento, MesNacimiento, DiaNacimiento Como Entero;
	Definir nombre Como Caracter;
	Definir dias, Meses Como Entero;
	Escribir "ingresa tu nombre";
	Leer nombre;
	escribir "Ingrese la fecha actual en año, mes y dìa";
	leer AnioActual, MesActual, DiaActual;
	//si se escribe mal la fecha
	
	Repetir
		si AnioActual>2021 y AnioActual<1900 Entonces
			
			Escribir "Has introducido un digito incorrecto";
		FinSi
		Escribir  "Ingrese nuevamente el año actual";
		Leer AnioActual;
	Hasta Que AnioActual<=2021 y AnioActual>=1900
	Repetir
		si MesActual<1 Y MesActual>12 Entonces
			
		FinSi
		Escribir "introduce nuevamente el mes actual";
		leer MesActual;
	Hasta Que MesActual>=1 y MesActual<=12;
	Repetir
		si DiaActual<1 y DiaActual>31 Entonces
			Escribir "Has introducido un digito incorrecto";
		FinSi
		Escribir "Introduce nuevamente el dia actual";
		leer DiaActual;
	Hasta Que DiaActual>=1 o DiaActual<=31
	

	Escribir "Ingrese su fecha de nacimiento en año, mes y dìa";
	Leer AnioNacimiento, MesNacimiento, DiaNacimiento;
	// ingreso mal la fecha
	Repetir
		si MesNacimiento<1 Y MesNacimiento>12 Entonces
			
			Escribir "Has introducido un digito incorrecto";
		FinSi
		Escribir "introduce nuevamente tu mes de nacimiento";
		leer MesNacimiento;
	Hasta Que MesNacimiento>=1 y MesNacimiento<=12;
	
	Repetir
		si AnioActual=i Entonces
			Escribir "Has introducido un digito incorrecto";

		FinSi
	Hasta Que AnioActual>=1900 o AnioActual<=2021;
	
	Edad <- AnioActual - AnioNacimiento;
	si MesNacimiento>MesActual Entonces
		Edad <- Edad-1;
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
	Meses <- MesActual-MesNacimiento;
	si MesNacimiento>MesActual Entonces
		Meses <-12+MesActual-MesNacimiento;
	FinSi
	dias <- DiaActual-DiaNacimiento;
	si DiaNacimiento>DiaActual Entonces
		dias <- DiaNacimiento-DiaActual;

	FinSi
	
	
	
	Escribir nombre, " Tu edad actual es: " , edad," Años ";
	Escribir  Meses ," Meses ";
	Escribir   dias ," Dias ";
	
	
	
FinProceso
