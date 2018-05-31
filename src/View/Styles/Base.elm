module View.Styles.Base exposing (..)

import Color exposing (Color, rgba, rgb)
import Element exposing (Attribute, Attr)
import Element.Background as BG
import Element.Font as Font

--------------------------------------------------------------------------------
-- Colors
--------------------------------------------------------------------------------

type ColorStyle
  = Brand
  | BrandLight
  | Primary
  | PrimaryLight
  | GrayDark
  | GrayMed
  | GrayLight
  | GrayLightest
  | OffWhite
  | White
  | Transparent

getColor : ColorStyle -> Color
getColor c = case c of
  Brand -> rgb 116 96 238
  BrandLight -> rgb 240 238 252
  Primary -> rgb 39 169 248
  PrimaryLight -> rgb 221 239 249
  GrayDark -> rgb 38 50 56
  GrayMed -> rgb 120 144 156
  GrayLight -> rgb 199 209 213
  GrayLightest -> rgb 231 238 240
  OffWhite -> rgb 244 248 249
  White -> rgb 254 254 254
  Transparent -> rgba 0 0 0 0.0

backgroundColor : ColorStyle -> Attr d msg
backgroundColor c =
  BG.color <| getColor c

textColor : ColorStyle -> Attr d msg
textColor c =
  Font.color <| getColor c

--------------------------------------------------------------------------------
-- Typography
--------------------------------------------------------------------------------

fontFamilyBase : Attribute msg
fontFamilyBase =
  Font.family
    [ Font.typeface "Open Sans"
    , Font.sansSerif
    ]

fontSizeBase : Attribute msg
fontSizeBase =
  Font.size 16

fontSizeXL : Attribute msg
fontSizeXL =
  Font.size 32

fontSizeSm : Attribute msg
fontSizeSm =
  Font.size 13

--------------------------------------------------------------------------------
-- Reset
--------------------------------------------------------------------------------

reset : List (Attribute msg)
reset =
  [ fontFamilyBase
  , fontSizeBase
  , backgroundColor White
  , textColor GrayDark
  ]
