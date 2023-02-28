concrete ChomskyEng of Chomsky = {

  cat
    Sentence ;
    NP ;
    VP ;
    Det ;
    N = { s : Number => Str } ;
    V ;
    V2 ;

  fun
    mkS np vp = np ++ vp ;
    mkNP det n = det ++ n ;
    mkVP2 v2 np = v2 ++ np ;
    mkVP1 v = v ;
    the  = "the" ;
    man  = "man" ;
    book = "book" ;
    take = "took" ;
    walk : V ;

}
