concrete ChomskyZul of Chomsky = {

  lincat
    Sentence, NP, VP, Det, N, V = Str ;

  lin
    mkS np vp = np ++ vp ;
    mkNP det n = det ++ n ;
    mkVP v np = v ++ np ;
    the  = "" ;
    man  = "indoda" ;
    book = "incwadi" ;
    took = "ithathe" ;
}
