%limpia la pantalla y las variables.
clc, clear  

%Carga de la paqueteria Symbolic
pkg load symbolic

%El comando sym nos permite crear y dar un valor inicial a una variable simbólica x.
syms f(x)

%La derivada se realizara respecto a la variable simbolica por defecto (x). 
f(x) = (3*x-2);
%Devuelve la derivada de la funcion ingresada
Df = diff(f,x)

%Proceso de operacion del T.V.M.
%T.V.IM. f´(c)=f(b)-f(a)/b-a.
ValorIntMed=(3+2)/(3+2)
ans = (sym)

%Define los intervalos y el numero de rectangulos.
a =   3;
b =  -2;
n = 100;

%Determina la longitud de la base de x.
base = (b-a)/n;

%Definicion de la funcion.
x =a:base:(b-base);

%Representa la altura---"x=1 al graficar"
altura=(3*x-2);

%Calcula el valor de cada uno de los rectangulos.
area = base*altura;

%Establece    la    linea   que   forma  la funcion
x2 = linspace(-2,3,100);
y2 =(3*x-2);

%Inicio del  intervalo, fin del intervalo, numero de rectangulos.
xa = linspace(-2,3,100);
yab =(3*x-2);

%Dibuja una  grafica de barras sin espacios
g = bar(xa,yab,'histc');

%Permite continuar  graficando
hold on

%Grafica la funcion
plot(x2,y2);

%Asigna un nombre a la grafica 
title("Ejericicio 1: (3x-2),[-2,3],k=1");

%ajusta la grafica a los datos.
axis tight
