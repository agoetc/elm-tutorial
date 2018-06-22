module Main exposing (..)

import Html exposing (Html, button, div, program, text)
import Html.Events exposing (onClick)


-- モデル


type alias Model =
    Bool


init : ( Model, Cmd Msg )
init =
    ( False, Cmd.none )



-- message


type Msg
    = Expand
    | Collapse



-- VIEW


view : Model -> Html Msg
view model =
    if model then
        div []
            [ button [ onClick Collapse ] [ text "Collapse" ]
            , text "Widget"
            ]
    else
        div []
            [ button [ onClick Expand ] [ text "Expand" ] ]



-- 更新


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Expand ->
            ( True, Cmd.none )

        Collapse ->
            ( False, Cmd.none )



-- 購読


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- Main


main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
