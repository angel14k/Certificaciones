function m = Biseccion (a, b, tol) %Éste método recibe como parámetros los intervalos a, b y la tolerancia que aceptaremos para aproximar nuestro resultado.
  f = @(x)x.^2+3*x-1; %Definimos un tipo de función anónima con la que se trabajará. Notar mucho en la representación de un exponente
  %f = @(x)exp(-x)-x;
  disp("\ta \t\tb \t m \t  f(a) \t\t f(b)\t\tf(m)\ttolerancia");
  while true
    m = (a + b) / 2;
    v = [a b m f(a) f(b) f(m) tol];
    disp(v)
    if (f(a) * f(m) > 0)
      a = m;
    elseif (f(a) * f(m)) < 0
      b = m;
    else
      disp("Se encontró una solucion real de la ecuacion con x:"), disp(m);
      break;
    endif
    if(abs(f(m)) < tol)
      break;
    endif
  endwhile
  clc %Comando que elimina cualquier otro resultado del método. Si gustan pueden quitarlo para ver las aproximaciones.
  disp("Solucion aproximada es x:"), disp(m);
  
  %GRÁFICA
  x = linspace(-5, 3, 100);
  y = f(x);
  %Gráfica de la función
  plot(x, y, 'linewidth', 1);
  grid on;
  title("----");
  xlabel("X");
  ylabel("Y");  
  %Gráfica del punto solución
  hold on
  plot(m, f(m), 'ro-');
  %Eje de las abscisas (Eje X)
  hold on
  plot([min(x), max(x)], [0, 0], 'k', 'linewidth',2);
  hold off
 
  %Biseccion(-4, -3, 0.00005)
  %Biseccion(0, 1, 0.00005)