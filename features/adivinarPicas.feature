Feature:
	Como usuario de pifia2
	Quiero adivinar del numero oculto si contiene picas
	Para saber resultado parcial

Scenario: el juego debe iniciar con un numero oculto definido
	Given que empezo el juego
	Then debo ver "Ingresar numero"

Scenario: si un jugador ingresa el numero 1234
	Given que empezo el juego
	When jugador ingrese el numero "1234" en "num"
	Then debo ver "1234: 1P 9 intentos restantes"