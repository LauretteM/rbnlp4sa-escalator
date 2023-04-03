concrete ChomskyZul of Chomsky = {

  lincat
    Sentence = { s : Str } ;
    NP = { s : Str ; c : Class } ;
    N = { s : Str ; c : Class } ;

    Det = { s : Str } ;

    VP = { s : Class => Str } ;
    V = { s : Class => Str } ;

  lin
    mkS np vp = { s = np.s ++ vp.s!np.c } ;
    mkNP det n = { s = det.s ++ n.s ; c = n.c } ;
    mkVP v np = { s = \\c => v.s!c ++ np.s } ;
    the  = { s = "" } ;
    man  = { s = "indoda" ; c = C9 } ;
    boy  = { s = "umfana" ; c = C1 } ;
    book = { s = "incwadi" ; c = C9 } ;
    take = {
      s = table {
        C1 => "uthatha" ;
        C3 => "uthatha" ;
        C5 => "lithatha" ;
        C7 => "sithatha" ;
        C9 => "ithatha"
      }
    } ;

  param
    Class = C1 | C3 | C5 | C7 | C9 ;

}
