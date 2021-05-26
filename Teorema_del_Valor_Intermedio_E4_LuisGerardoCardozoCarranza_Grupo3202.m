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

%Definimos la funcion
x=-2:.05:0;
f=inline('3*x-2');
plot(x,f(x),'r','LineWidth',2)

%Para calcular la integral
valor_de_Integral=quad(f,-2,0)

%Determina el valor del punto c
Valor_Medio=strcat('3*x.^3-2*x^2==',num2str(1/3*valor_de_Integral))

%Interpretación geométrica
hold on
area(x,f(x))
altura=f(c(1));
plot([-2 0],[altura altura])
hold off
