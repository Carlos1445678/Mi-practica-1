read -p "Introduzca el  nombre del usuario login :" usuario
existe=0
for aux in cat /etc/passwd  | cut  -f1  -d ":"
do
            if ["$aux" == "$usuario"]
            then
	      existe=1
            fi
done
 
if [existe -eq 1]
then
	echo"el usuario no existe en el sistema"
else
	echo "el usuario si existe"
fi


"BUCLE FOR
for (( i=1;i<=15; i++))
do
	echo "Numeracion uno en uno  $i"
done

for ((contador=1;$contador<15;contador++))
do
	echo"Numeracion : $contador"
done