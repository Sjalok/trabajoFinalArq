#! /bin/bash
AUX=0
AUX2=1
echo "Buen dia, $user ! como se ha despertador hoy?"
echo "Fui programado para ofrecer dos cosas: "
echo "dar la hora actual, mostrar el clima de hoy y hasta mostrar la fase lunar para salir bien preparado!"
echo "    "

while [ $AUX2 -eq 1 ]
do
    echo "Que desea ver? ( 1 para la hora, 2 para el clima,3 para ver la fase lunar y 4 para salir )"
    read AUX
    if [ $AUX -gt 4 ]
    then
        echo "No existe esa opcion señor, por favor elija otra!"
    fi
    if [ $AUX -lt 1 ]
    then
        echo "No existe esa opcion señor, por favor elija otra!"
    fi
    if [ $AUX -eq 4 ]
    then
        echo "Espero que esta informacion le haya servido buen señor! hasta luego, vuelva prontos."
        echo "Ojala tenga un magnifico dia!"
        ((AUX2--))
    fi
    if [ $AUX -eq 1 ]
    then
        echo "La hora actual es: "
        date +"%I:%M %p"
    fi
    if [ $AUX -eq 2 ]
    then
        curl wttr.in/Bahia-Blanca?0
        echo "     "
    fi
    if [ $AUX -eq 3 ]
    then
        curl wttr.in/Moon
        echo "     "
    fi
done