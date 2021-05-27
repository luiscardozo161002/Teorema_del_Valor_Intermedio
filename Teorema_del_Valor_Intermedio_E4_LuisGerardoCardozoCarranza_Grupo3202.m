% Octave Script
% Title			:1.8 Teorema del Valor Intermedio
% Description		:Script para graficar el ejericio 4 de la actividad 1.8
% Author		:Luis Gerardo Cardozo Carranza (Gerard_CRS) luiscardozo161002@gmail.com
% Date			:20210525
% sion		        :1
% Usage			:octave> /path/Teorema_del_Valor_Intermedio_Actividad_1.8_Luis Gerardo Cardozo Carranza_3202
% Notes			:Requiere aplicacion octave usar en consola preferentemente.

%limpia la pantalla y las variables.
clc, clear  

%Carga de la paqueteria Symbolic
pkg load symbolic

%El comando sym nos permite crear y dar un valor inicial a una variable simbólica x.
syms f(x)

%La derivada se realizara respecto a la variable simbolica por defecto (x). 
f(x) = (3*x.^3-2*x.^2);
%Devuelve la derivada de la funcion ingresada
Df = diff(f,x)

%Proceso de operacion del T.V.M.
%T.V.IM. f´(c)=f(b)-f(a)/b-a.
%El comando fix reduce los decimales.
ValorIntMed=fix(sqrt(2))
ans = (sym)

%Define los intervalos y el numero de rectangulos.
a =  -2;
b =   0;
n = 100;

%Determina la longitud de la base de x.
base = (b-a)/n;

%Definicion de la funcion.
x =a:base:(b-base);

%Representa la altura
altura=(9*x.^2-4);

%Calcula el valor de cada uno de los rectangulos.
area = base*altura;

%Establece    la    linea   que   forma  la funcion
x2 = linspace(-2,0,100);
y2 =(9*x.^2-4);

%Inicio del  intervalo, fin del intervalo, numero de rectangulos.
xa = linspace(-2,0,100);
yab =(9*x.^2-4);

%Dibuja una  grafica de barras sin espacios
g = bar(xa,yab,'histc');

%Permite continuar  graficando
hold on

%Grafica la funcion
plot(x2,y2);

%Asigna un nombre a la grafica 
title("Ejericicio 4: (3x^2-2x^2),[-2,0],C=1");

%ajusta la grafica a los datos.
axis tight


