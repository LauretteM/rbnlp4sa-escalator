concrete FruitZul of Fruit = open Prelude in {

-- Author: Laurette Marais
-- Date: 2024-06-23

flags coding = utf8 ;

lincat
    Statement = Str;
    Fruit = {s : Str; c : Class};
    FruitKind = {s : Str; c : Class};
    FruitDescription = {s : Str};
    Action = {s : Class => Str};
    Actor = {s : Str; c : Class};

lin
    ActOnFruitSg actor action fruit = actor.s ++ action.s ! actor.c ++ fruit.s;

    DescribeFruitSg fruit fruitdescription = fruit.s ++ prim_rel_cop ! fruit.c ++ fruitdescription.s;
    
    SimpleFruit fruitkind = fruitkind;

    Fresh  = {s = "ncwaba"};
    Delicious  = {s = "mnandi"};

    Slice  = regVerb "nquma";
    Peel  = regVerb "cwecwa";
    Eat  = regVerb "dla";
    Bite  = regVerb "luma";

    Boy  = regNoun "umfana" C1;
    Girl  = regNoun "intombazana" C9;
    Woman  = regNoun "umfazi" C1;
    Man  = regNoun "indoda" C9;

    Apple  = regNoun "ihhabhula" C5;
    Lemon  = regNoun "ulamula" C1a;
    Orange  = regNoun "iwolintshi" C5;
    Strawberry  = regNoun "istrobheri" C5;

param
    Number = Sg | Pl;
    Class = C1 | C1a | C3 | C5 | C7 | C9 | C11 | C14;

oper
    regNoun : Str -> Class -> {s : Str; c : Class}  = \n,c -> {s = n; c = c};
    regVerb : Str -> {s : Class => Str}  = \v -> {
        s = table {
            C1 => "u" + v ;
            C1a => "u" + v ;
            C3 => "u" + v ;
            C5 => "li" + v ;
            C7 => "si" + v ;
            C9 => "i" + v ;
            C11 => "lu" + v ;
            C14 => "bu" + v 
        }
    };

    prim_rel_cop : Class => Str  = table {
        C1 => "u" ++BIND ;
        C1a => "u"++BIND ;
        C3 => "u"++BIND ;
        C5 => "li"++BIND ;
        C7 => "si"++BIND ;
        C9 => "i"++BIND ;
        C11 => "lu"++BIND ;
        C14 => "bu"++BIND 
   };

}
