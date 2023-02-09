concrete NumbersAfr of Numbers = open Prelude in {

  lincat
    Number = Str ;
    Num = { card : Str ; ord : Str ; digit : Str ; lingNum : LingNum } ;
    -- Sub10Num = { card : Str ; ord : Str ; digit : Str ; lingNum : LingNum } ;
    Sub100Num = { card : Str ; ord : Str ; digit : Str ; en : Bool } ;
    Sub1000Num = { card : Str ; ord : Str ; digit : Str } ;
    Sub10Num, Digit = {
      card : Str ;
      ord : Str ;
      digit : Str ;
      type : DigitType ;
      alt_teen : Str ;
      alt_ten : Str
    } ;
    Pron = { s : LingNum => Str } ;

  lin

    -- DigitCount n = n.digit ;
    -- DigitQual p n = p.s ++ n.digit ;
    -- NormOrd p n = p.s ++ n.digit ;

    -- NormCount n = n.card ;
    -- NormQual p n = p.s ++ n.card ;
    -- NormOrd p n = p.s ++ n.ord ;

    NumSub10 n = {
      card = n.card ;
      ord = n.ord ;
      digit = n.digit ;
      lingNum = case n.type of {
        One => Sg ;
        _ => Pl
      }
    } ;
    -- NumSub100 : Sub100Num -> Num ;
    -- NumSub1000 : Sub1000Num -> Num ;
    Sub10 d = d ;
    Sub100 d n = {
      card = case d.type of {
        Zero => n.card ;
        One => n.alt_teen ;
        _ => case n.type of {
          Zero => d.alt_ten ;
          _ => n.card ++ "en" ++ d.alt_ten
        }
      } ;
      ord = case d.type of {
        Zero => n.ord ;
        One => n.alt_teen ++BIND++ "de ";
        _ => case n.type of {
          Zero => d.alt_ten ++BIND++ "ste" ;
          _ => n.card ++ "en" ++ d.alt_ten ++BIND++ "ste"
        }
      } ;
      digit = d.digit ++BIND++ n.digit ;
      en = case d.type of {
        Zero | One => True ; -- 304, 313
        Two | Other => case n.type of {
          Zero => True ; -- 350
          _ => False -- 345
        }
      }
    } ;
    Sub1000 d n = let
      en = case n.en of {
        True => "en" ;
        False => ""
      }
      in {
        card = case d.type of {
          Zero => n.card ;
          _ => d.card ++BIND++ "honderd" ++ case n.type of {
            Zero => "" ;
            _ => en ++ n.card
          }
        } ;
        ord = case d.type of {
          Zero => n.ord ;
          _ => d.card ++BIND++ "honderd" ++ case n.type of {
            Zero => BIND ++ "ste" ;
            _ => en ++ n.ord
          }
        } ;
        digit = d.digit ++BIND++ n.digit
      } ;

    D_0 = {
      card = "nul" ;
      ord = "nul" ;
      digit = "0" ;
      type = Zero ;
      alt_teen = "tien" ;
      alt_ten = "nul"
    } ;
    D_1 = {
      card = "een" ;
      ord = "eerste" ;
      digit = "1" ;
      type = One ;
      alt_teen = "elf" ;
      alt_ten = "tien"
    } ;
    D_2 = {
      card = "twee" ;
      ord = "tweede" ;
      digit = "2" ;
      type = Two ;
      alt_teen = "twaalf" ;
      alt_ten = "twintig"
    } ;
    D_3 = regDigit "drie" "der" "3" ;
    D_4 = regDigit "vier" "veer" "4" ;
    D_5 = regDigit "vyf" "vyf" "5" ;
    D_6 = regDigit "ses" "ses" "6" ;
    D_7 = regDigit "sewe" "sewen" "7" ;
    D_8 = {
      card = "agt" ;
      ord = "agste" ;
      digit = "8" ;
      type = Other ;
      alt_teen = regTeen "agt" ;
      alt_ten = "tagtig"
    } ;
    D_9 = regDigit "nege" "negen" "9" ;

    he_she_Pron = {
      s = table {
        Sg => "ding" ;
        Pl => "dinge"
        }
    } ;
    -- they_Pron : Pron ;
    -- it3_Pron : Pron ;
    -- they4_Pron : Pron ;
    -- it5_Pron : Pron ;
    -- they6_Pron : Pron ;
    -- it7_Pron : Pron ;
    -- they8_Pron : Pron ;
    -- it9_Pron : Pron ;
    -- they10_Pron : Pron ;
    -- it11_Pron : Pron ;
    -- it14_Pron : Pron ;
    -- it15_Pron : Pron ;
    -- it17_Pron : Pron ;

  param
    DigitType = Zero | One | Two | Other ;
    LingNum = Sg | Pl ;

  oper

    regDigit : Str -> Str -> Str -> {
      card : Str ;
      ord : Str ;
      digit : Str ;
      type : DigitType ;
      alt_teen : Str ;
      alt_ten : Str
    } = \c,alt,d -> {
      card = c ;
      ord = regOrd alt ;
      digit = d ;
      type = Other ;
      alt_teen = regTeen alt ;
      alt_ten = regTen alt
    } ;

    regOrd : Str -> Str = \s -> s + "de" ;
    regTeen : Str -> Str = \s -> s + "tien" ;
    regTen : Str -> Str = \s -> s + "tig" ;

}
