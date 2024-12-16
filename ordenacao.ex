defmodule InsertionSort do
    def ins(x,[]) do
        [x]
    end
    def ins(x,[h|t]) do
        cond do
            x == h -> [x|t]
            x > h -> [x|[h|t]]
            true -> [h|ins(x, t)]
        end
    end
    def insertion_sort([]) do
        []
    end
    def insertion_sort([h|t]) do
        ins(h,insertion_sort(t))
    end
    def maior([h|t]) do
        hd(insertion_sort([h|t]))
    end
    def percorreLista([n]) do
        n
    end
    def percorreLista([h|t]) do
        percorreLista(t)
    end
    def menor([h|t]) do
        percorreLista(insertion_sort([h|t]))
    end
end
