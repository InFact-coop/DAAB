module Routes.Help exposing (..)

import Components.QuestionListItem exposing (..)
import Components.RedButton exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


helpRoute : Model -> Html Msg
helpRoute model =
    div [ class "custom-padding" ]
        [ h2 [ class "f3" ] [ text "FAQ" ]
        , ul [ class "pl0" ]
            (List.map
                questionListItem
                model.questions
            )
        , div []
            [ h2 [ class "f3" ] [ text "What would you like to do next?" ]
            , redButton ( "RECORD NEW BOX", "box" )
            , redButton ( "RECORD BANKING", "bank" )
            , redButton ( "RETURN HOME", "home" )
            ]
        ]
