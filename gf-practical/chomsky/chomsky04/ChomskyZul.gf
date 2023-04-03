concrete ChomskyZul of Chomsky = open ChomskyResZul in {

  lincat
    Sentence = { s : Str } ;
    NP = { s : Str ; c : Class ; num : Number } ;
    VP = { s : Class => Number => Str } ;

    Det = { s : Str ; num : Number } ;

    N = { s : Number => Str ; c : Class } ;
    V = { s : Class => Number => Str } ;

  lin
    mkS np vp = { s = np.s ++ vp.s!np.c!np.num } ;
    mkNP det n = { s = det.s ++ n.s!det.num ; c = n.c ; num = det.num } ;
    mkVP v np = { s = \\c,num => v.s!c!num ++ np.s } ;
    the_Sg  = { s = "" ; num = Sg } ;
    the_Pl  = { s = "" ; num = Pl } ;
    man  = { s = noun_forms "indoda" "amadoda" ; c = C9_6 } ;
    boy  = { s = noun_forms "umfana" "abafana" ; c = C1_2 } ;
    book = { s = noun_forms "incwadi" "izincwadi" ; c = C9_10 } ;
    take = {s = verb_forms "thatha" } ;
    see = {s = verb_forms "bona" } ;

}
