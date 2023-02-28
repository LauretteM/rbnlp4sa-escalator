resource ChomskyResZul = {

  param
    Class = C1_2 | C3_4 | C5_6 | C7_8 | C9_10 | C9_6 ;
    Number = Sg | Pl ;

  oper
    verb_forms : Str -> Class => Number => Str = \root -> table {
      C1_2 =>   table { Sg => "u" + root ;  Pl => "ba" + root } ;
      C3_4 =>   table { Sg => "u" + root ;  Pl => "i" + root } ;
      C5_6 =>   table { Sg => "li" + root ; Pl => "a" + root } ;
      C7_8 =>   table { Sg => "si" + root ; Pl => "ba" + root } ;
      C9_10 =>  table { Sg => "i" + root ;  Pl => "zi" + root } ;
      C9_6 =>   table { Sg => "i" + root ;  Pl => "zi" + root }
    } ;

    noun_table : Str -> Str -> Number => Str = \n_sg,n_pl -> table {
      Sg => n_sg ;
      Pl => n_pl
    } ;

}
