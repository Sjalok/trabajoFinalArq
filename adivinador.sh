#! /bin/bash
echo "Bienvenido/a al juego de la adivinanza!"
echo "Debera adivinar un numero entre 1 y 50"
echo "cada vez que le pida un numero y no acierte le dira si esta bajo o aleatorio"
echo "y por ultimo, la cantidad de intentos es de 10, Buena suerte!"
ALEATORIO=$(( $RANDOM % 50 + 1 ))
INTENTOS=10

AUX=0

while [ $INTENTOS -ge 0 ]
do
    echo "Te quedan $INTENTOS intentos!"
    echo "Que numero quieres jugar? "
    read AUX
    if [ $AUX -eq $ALEATORIO ]
    then
        if [ $INTENTOS -gt 5 ]
        then
        echo "Felicidades!! le acertaste al numero y en menos de 5 intentos! andas de suerte! te recomiendo jugar a la quiniela hoy :D"
        fi
        if [ $INTENTOS -le 5 ]
        then
        echo "Congratulaciones! pudiste acertarle al numero, pero en 5 intentos o mas, te reto a hacerlo en menos ;)"
        fi
        break
    fi
    if [ $AUX -gt $ALEATORIO ]
    then
        echo "No es el numero, estas alto"
        ((INTENTOS--))
    fi
    if [ $AUX -lt $ALEATORIO ]
    then
        echo "No es el numero, estas bajo"
        ((INTENTOS--))
    fi
    if [ $INTENTOS -eq 1 ]
    then
        echo "Flaco, no te quiero meter presion, pero te queda un intento....."
    fi
    if [ $INTENTOS -eq 0 ]
    then
        echo "Se te terminaron los intentos, mejor dedicate a otra cosa, esto no es lo tuyo."
    fi
done