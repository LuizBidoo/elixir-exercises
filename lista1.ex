defmodule Exec do
    def tres_iguais(a,b,c) do
        a == b && b == c
    end
    def quatro_iguais(a, b, c, d), do: a == b and b == c and c == d
    def quantos_iguais(a, b, c) do
        cond do
            a != b and b != c -> 0
            a == b and b == c -> 3
            true -> 2
        end
    end
    def todos_diferentes(a,b,c) do
        a != b and b != c and a != c 
    end
    def quantos_iguais2(a,b,c) do
        cond do
            todos_diferentes(a,b,c) -> 0
            tres_iguais(a,b,c) -> 3
            true -> 2
        end
    end
    def elevado_dois(n), do: n * n
    def elevado_quatro(n) do
      elevado_dois(elevado_dois(n))
    end
    def palindromo?(string) do
      string == String.reverse(string)
    end
    def verifica_triangulo(a,b,c) do
      !(a + b < c) || !(a + c < b) || !(b + c < a)
    end
end
