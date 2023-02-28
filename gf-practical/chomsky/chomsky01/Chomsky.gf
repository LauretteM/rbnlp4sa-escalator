abstract Chomsky = {

  flags
    startcat = Sentence ;

  cat
    Sentence ;
    NP ;
    VP ;
    Det ;
    N ;
    V ;

  fun
    mkS : NP -> VP -> Sentence ;
    mkNP : Det -> N -> NP ;
    mkVP : V -> NP -> VP ;
    the  : Det ;
    man  : N ;
    book : N ;
    took : V ;

}
