module View.Elements.Icon exposing (..)

import Html as Html
import Html.Attributes exposing (class)
import Element as El

type Icon
  = Cloud
  | Menu
  | Search
  | Grid
  | Home
  | Contacts
  | Building
  | TextBubble
  | Folder
  | Calendar
  | Alarm

icon : List (El.Attribute msg) -> Icon -> El.Element msg
icon attrs i =
  let lig = case i of
    Cloud -> "cloud"
    Menu -> "menu"
    Search -> "search"
    Grid -> "apps"
    Home -> "home"
    Contacts -> "people"
    Building -> "domain"
    TextBubble -> "chat_bubble"
    Folder -> "folder"
    Calendar -> "calendar_today"
    Alarm -> "alarm_on"
  in
  El.el attrs <| El.html <| Html.i [ class "material-icons" ] <| [ Html.text lig ]

