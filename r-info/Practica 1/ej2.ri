programa Ejercicio2
procesos 
  proceso juntarPapeles
  variables
    cantP,pasos:numero
  comenzar
    cantP:=0
    pasos:=19
    mientras (pasos<>0)
      mientras (HayPapelEnLaEsquina)
        cantP:=cantP +1
        tomarPapel
      pasos:=pasos -1
      mover
    si (pasos=0) 
      Informar(cantP)
  fin
areas
  ciudad: AreaC(1,1,20,20)
robots
  robot robot1
  comenzar
    juntarPapeles
  fin
  robot robot2
  comenzar 
    derecha
    juntarPapeles
  fin
  robot robot3
  comenzar
    derecha 
    derecha
    juntarPapeles
  fin
  robot robot4
  comenzar
    repetir 3
      derecha
    juntarPapeles
  fin
variables
  R1 : robot1
  R2 : robot2
  R3 : robot3
  R4 : robot4
comenzar
  AsignarArea(R1,ciudad)
  AsignarArea(R2,ciudad)
  AsignarArea(R3,ciudad)
  AsignarArea(R4,ciudad)
  Iniciar(R1, 1 , 1)
  Iniciar(R2, 1 , 20)
  Iniciar(R3, 20 , 20)
  Iniciar(R4, 20, 1)
fin 
