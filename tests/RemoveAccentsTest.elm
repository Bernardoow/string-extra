module RemoveAccentsTest exposing (removeAccentsTest)

import Expect
import String.Extra exposing (removeAccents)
import Test exposing (..)


removeAccentsTest : Test
removeAccentsTest =
    describe "removeAccents"
        [ test "Should result string without acents" <|
            \() ->
                removeAccents "áàãâäéèêëíìîïóòõôöúùûüçÁÀÃÂÄÉÈÊËÍÌÎÏÓÒÕÖÔÚÙÛÜÇ"
                    |> Expect.equal "aaaaaeeeeiiiiooooouuuucAAAAAEEEEIIIIOOOOOUUUUC"
        , test "Should result in string without acents" <|
            \() ->
                removeAccents "andré JOÂO"
                    |> Expect.equal "andre JOAO"
        ]
