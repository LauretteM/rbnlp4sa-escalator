abstract Numbers = {

  flags
    startcat = Numeral ;

  cat
    Numeral ;
    Num ;
    Sub10Num ;
    Sub100Num ;
    Sub1000Num ;
    Digit ;
    Pron ;

  fun

    DigitCount : Num -> Numeral ;
    DigitQual : Pron -> Num -> Numeral ;
    DigitOrd : Pron -> Num -> Numeral ;

    NormCount : Num -> Numeral ;
    NormQual : Pron -> Num -> Numeral ;
    NormOrd : Pron -> Num -> Numeral ;

    NumSub10 : Sub10Num -> Num ;
    NumSub100 : Sub100Num -> Num ;
    NumSub1000 : Sub1000Num -> Num ;
    Sub10 : Digit -> Sub10Num ;
    Sub100 : Digit -> Sub10Num -> Sub100Num ;
    Sub1000 : Digit -> Sub100Num -> Sub1000Num ;

    D_0 : Digit ;
    D_1 : Digit ;
    D_2 : Digit ;
    D_3 : Digit ;
    D_4 : Digit ;
    D_5 : Digit ;
    D_6 : Digit ;
    D_7 : Digit ;
    D_8 : Digit ;
    D_9 : Digit ;

    he_she_Pron : Pron ;
    they_Pron : Pron ;
    it3_Pron : Pron ;
    they4_Pron : Pron ;
    it5_Pron : Pron ;
    they6_Pron : Pron ;
    it7_Pron : Pron ;
    they8_Pron : Pron ;
    it9_Pron : Pron ;
    they10_Pron : Pron ;
    it11_Pron : Pron ;
    it14_Pron : Pron ;
    it15_Pron : Pron ;
    it17_Pron : Pron ;

}
