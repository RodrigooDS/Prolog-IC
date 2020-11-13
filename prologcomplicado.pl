dia(lunes).
dia(martes).
dia(miercoles).
dia(jueves).
dia(viernes).
dia(sabado).
dia(domingo).

frase('Hola, soy Alberto').
frase('Hoy es el tercer dia que miento').
frase('Mañana es sábado').

nombre(alberto).
nombre(carlos).
nombre(luis).

verdad(alberto,lunes,'Mañana es sábado').
verdad(alberto,martes,'Mañana es sábado').
verdad(alberto,miercoles,'Mañana es sábado').
verdad(alberto,viernes,'Mañana es sábado').
verdad(alberto,lunes,'Hoy es el tercer dia que miento').
verdad(alberto,martes,'Hoy es el tercer dia que miento').
verdad(alberto,jueves,'Hola, soy Alberto').
verdad(alberto,viernes,'Hola, soy Alberto').
verdad(alberto,sabado,'Hola, soy Alberto').
verdad(alberto,domingo,'Hola, soy Alberto').

verdad(carlos,miercoles,'Mañana es sábado').
verdad(carlos,jueves,'Mañana es sábado').
verdad(carlos,miercoles,'Hoy es el tercer dia que miento').
verdad(carlos,jueves,'Hoy es el tercer dia que miento').
verdad(carlos,miercoles,'Hola, soy Alberto').
verdad(carlos,jueves,'Hola, soy Alberto').
verdad(carlos,viernes,'Hola, soy Alberto').

verdad(luis,sabado,'Mañana es sábado').
verdad(luis,domingo,'Mañana es sábado').
verdad(luis,viernes,'Hoy es el tercer dia que miento').
verdad(luis,sabado,'Hoy es el tercer dia que miento').
verdad(luis,viernes,'Hola, soy Alberto').
verdad(luis,sabado,'Hola, soy Alberto').
verdad(luis,domingo,'Hola, soy Alberto').

falso(alberto,jueves,'Mañana es sábado').
falso(alberto,sabado,'Mañana es sábado').
falso(alberto,domingo,'Mañana es sábado').

falso(carlos,lunes,'Mañana es sábado').
falso(carlos,martes,'Mañana es sábado').
falso(carlos,viernes,'Mañana es sábado').
falso(carlos,sabado,'Mañana es sábado').
falso(carlos,domingo,'Mañana es sábado').

falso(luis,lunes,'Mañana es sábado').
falso(luis,martes,'Mañana es sábado').
falso(luis,miercoles,'Mañana es sábado').
falso(luis,jueves,'Mañana es sábado').
falso(luis,viernes,'Mañana es sábado').

falso(alberto,miercoles,'Hoy es el tercer dia que miento').
falso(alberto,jueves,'Hoy es el tercer dia que miento').
falso(alberto,viernes,'Hoy es el tercer dia que miento').
falso(alberto,sabado,'Hoy es el tercer dia que miento').
falso(alberto,domingo,'Hoy es el tercer dia que miento').

falso(carlos,lunes,'Hoy es el tercer dia que miento').
falso(carlos,martes,'Hoy es el tercer dia que miento').
falso(carlos,viernes,'Hoy es el tercer dia que miento').
falso(carlos,sabado,'Hoy es el tercer dia que miento').
falso(carlos,domingo,'Hoy es el tercer dia que miento').

falso(luis,lunes,'Hoy es el tercer dia que miento').
falso(luis,martes,'Hoy es el tercer dia que miento').
falso(luis,miercoles,'Hoy es el tercer dia que miento').
falso(luis,jueves,'Hoy es el tercer dia que miento').
falso(luis,domingo,'Hoy es el tercer dia que miento').

falso(alberto,lunes,'Hola, soy Alberto').
falso(alberto,martes,'Hola, soy Alberto').
falso(alberto,miercoles,'Hola, soy Alberto').

falso(carlos,lunes,'Hola, soy Alberto').
falso(carlos,martes,'Hola, soy Alberto').
falso(carlos,sabado,'Hola, soy Alberto').
falso(carlos,domingo,'Hola, soy Alberto').

falso(luis,lunes,'Hola, soy Alberto').
falso(luis,martes,'Hola, soy Alberto').
falso(luis,miercoles,'Hola, soy Alberto').
falso(luis,jueves,'Hola, soy Alberto').


respuesta(X,Y,Z):-dia(X),nombre(Y),frase(Z).
respuesta_final(X,Y1,Z1,Y2,Z2,Y3,Z3):-respuesta(X,Y1,Z1),
    respuesta(X,Y2,Z2),
    not(Y1=Y2),not(Z1=Z2),
    respuesta(X,Y3,Z3),
    not(Y2=Y3),not(Z2=Z3),
    not(Y1=Y3),not(Z1=Z3),
    not(falso(Y1,X,Z1)),
    not(falso(Y2,X,Z2)),
	not(falso(Y3,X,Z3)),
    (verdad(Y1,X,Z1)),
    (verdad(Y2,X,Z2)),
    (verdad(Y3,X,Z3)),
    Y1='alberto',
    Y2='carlos',
    Y3='luis'.
