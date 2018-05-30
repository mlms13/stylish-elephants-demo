import Html exposing (Html)
import Element exposing (..)
import Element.Input as ElInput
import Element.Border as ElBorder
import View.Elements.Icon exposing (Icon(..), icon)
import View.Elements.VNav exposing (..)
import View.Styles.Base exposing (..)

main : Html msg
main = view

view : Html msg
view =
  layout (reset ++ [ height fill, width fill ]) <|
    row [ alignTop, height fill, width fill ]
      [ sidebar
      , page
      ]

navItems : List NavItem
navItems =
  [ NavItem "Home" Home
  , NavItem "Contacts" Contacts
  , NavItem "Companies" Building
  , NavItem "Deals" TextBubble
  , NavItem "Documents" Folder
  ]

sidebar : Element msg
sidebar =
  column [ width (px 250), (ElBorder.widthEach { bottom = 0, left = 0, right = 1, top = 0}), ElBorder.color <| getColor GrayLightest ]
    [ logoMenu
    , nav navItems
    ]

logoMenu : Element msg
logoMenu =
  row [ paddingXY 32 14, spacing 10]
    [ icon [ textColor Brand ] Cloud
    , el [ width fill ] <| text "AgileCRM"
    , icon [ textColor GrayMed ] Menu
    ]

page : Element msg
page =
  column [ height fill, width fill, alignTop, backgroundColor OffWhite ]
    [ toolbar
    , content
    ]

toolbar : Element msg
toolbar =
  row [ height (px 70), paddingXY 20 0, backgroundColor White ]
    [ searchInput
    , el [ width fill ] <| text "Icon"
    , text "Controls"
    ]

searchInput : Element msg
searchInput =
  row [ width <| fillPortion 1 ]
    [ icon [] Search
    , ElInput.search [ ElBorder.width 0 ]
      { label = ElInput.labelAbove [] none
      , onChange = Nothing
      , placeholder = Just <| ElInput.placeholder [] (text "Type in to Search")
      , text = ""
      }
    ]

content : Element msg
content =
  column [ padding 30 ]
    [ el [ fontSizeXL, textColor Brand ] <| text "Contact"
    , row [ paddingXY 0 40, spacing 20 ]
      [ el [ width fill, padding 20, backgroundColor White ] <| text "Card"
      , el [ width fill, padding 20, backgroundColor White ] <| text "Card"
      , el [ width fill, padding 20, backgroundColor White ] <| text "Card"
      , el [ width fill, padding 20, backgroundColor White ] <| text "Card"
      ]
    ]
