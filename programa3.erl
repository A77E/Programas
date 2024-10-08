-module(programa3).
-export([is_convex/1]).

% Punto representado como una tupla {X, Y}
% Cuadrilátero representado como una lista de 4 puntos [{X1, Y1}, {X2, Y2}, {X3, Y3}, {X4, Y4}]

% Función principal que determina si el cuadrilátero es convexo
is_convex([{X1, Y1}, {X2, Y2}, {X3, Y3}, {X4, Y4}]) ->
    Cross1 = cross_product({X1, Y1}, {X2, Y2}, {X3, Y3}),
    Cross2 = cross_product({X2, Y2}, {X3, Y3}, {X4, Y4}),
    Cross3 = cross_product({X3, Y3}, {X4, Y4}, {X1, Y1}),
    Cross4 = cross_product({X4, Y4}, {X1, Y1}, {X2, Y2}),
    
    % Verificamos que los productos cruzados sean todos del mismo signo
    (Cross1 > 0 andalso Cross2 > 0 andalso Cross3 > 0 andalso Cross4 > 0)
    orelse
    (Cross1 < 0 andalso Cross2 < 0 andalso Cross3 < 0 andalso Cross4 < 0).

% Calcula el producto cruzado entre tres puntos (vectores)
cross_product({X1, Y1}, {X2, Y2}, {X3, Y3}) ->
    (X2 - X1) * (Y3 - Y1) - (Y2 - Y1) * (X3 - X1).