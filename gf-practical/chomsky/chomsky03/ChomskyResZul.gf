resource ChomskyResZul = {

  param
    Class = C1 | C3 | C5 | C7 | C9 ;

  oper
    verb_forms : Str -> Class => Str = \root -> table {
      C1 => "u" + root ;
      C3 => "u" + root ;
      C5 => "li" + root ;
      C7 => "si" + root ;
      C9 => "i" + root
    } ;

}
