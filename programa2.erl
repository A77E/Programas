-module(programa2).
-export([evaluate_polynomial/0]).

% Función principal que evalúa el polinomio para x = 2, 4, ..., 40
evaluate_polynomial() ->
    lists:foreach(fun(X) ->
        Result = polynomial(X),
        io:format("El valor de f(~p) es: ~p~n", [X, Result])
    end, lists:seq(2, 40, 2)).

% Evaluar el polinomio x^4 - 8x^2 - 14x + 7
polynomial(X) ->
    X*X*X*X - 8*X*X - 14*X + 7.