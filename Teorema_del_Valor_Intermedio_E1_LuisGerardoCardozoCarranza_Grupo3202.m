  
% Octave Script
% Title			:1.8 Teorema del Valor Intermedio
% Description		:Script para graficar el ejericio 1 de la actividad 1.8
% Author		:Luis Gerardo Cardozo Carranza (Gerard_CRS) luiscardozo161002@gmail.com
% Date			:20210525
% sion		        :1
% Usage			:octave> /path/Teorema_del_Valor_Intermedio_Actividad_1.9_Luis Gerardo Cardozo Carranza_3202
% Notes			:Requiere aplicacion octave usar en consola preferentemente.

%Actividad_Ejercicio 1 f(x)=3x-2,[-2,3],K=1
%Carga de la paqueteria Symbolic
pkg load symbolic
%El comando sym nos permite crear y dar un valor inicial a una variable simbólica x.
syms x;
%La integracion se realizara respecto a la variable simbolica por defecto (x). 
int(3x-2)
%La respuesta de la operacion no ha sido asignado a ninguna variable y por defecto es ans
ans = (sym)
