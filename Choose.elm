module Main exposing (main)
-- https://en.wikipedia.org/wiki/Binomial_coefficient#Multiplicative_formula
import Html exposing (Html, div, text)


render_int_new_line txt = div [] [txt |> String.fromInt |> text]
  

choose : Int -> Int -> Int 
choose n k = 
    let
        in_map i = (toFloat n+1.0-toFloat i) / (toFloat i)
    in 
     List.range 1 k 
     |> List.map in_map  
     |> List.foldl (*) 1.0 |> truncate


main : Html msg 
main = 
    div []
        [ choose 0 0 |> render_int_new_line
        , choose 1 0 |> render_int_new_line
        , choose 2 0 |> render_int_new_line
        , choose 2 1 |> render_int_new_line
        , choose 2 2 |> render_int_new_line
        , choose 10 5 |> render_int_new_line -- 252
        ]

