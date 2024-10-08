-module(programa1).
-export([print_range/0]).

% Función principal que inicia la impresión de números
print_range() ->
    print_numbers(9, 43).

% Función recursiva que imprime números desde Start hasta End
print_numbers(Start, End) when Start =< End ->
    io:format("~p~n", [Start]), % Imprime el número actual
    print_numbers(Start + 1, End); % Llama a sí misma con el siguiente número
print_numbers(_, _) ->
    ok. % Caso base, termina la recursión