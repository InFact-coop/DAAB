module Helpers.FloatToCurrency exposing (..)


floatToCurrency : Float -> String
floatToCurrency float =
    let
        stringified =
            toString <| round (float * 100)

        leftOfPoint =
            String.dropRight 2 stringified

        rightOfPoint =
            String.right 2 stringified
    in
        leftOfPoint ++ "." ++ rightOfPoint
