concrete FruitEng of Fruit = {

-- Author: Laurette Marais
-- Date: 2024-06-23

flags coding = utf8 ;

lincat
    Statement = Str;
    Fruit = {s : Number => Str};
    FruitKind = {s : Number => Str};
    FruitDescription = {s : Str};
    Action = {s : Number => Str};
    Actor = {s : Number => Str};

lin
    ActOnFruitSg actor action fruit = "the" ++ actor.s ! Sg ++ action.s ! Sg ++ fruit.s ! Sg;
    -- ActOnFruitPl actor action fruit = "the" ++ actor.s ! Pl ++ action.s ! Pl ++ fruit.s ! Pl;

    DescribeFruitSg fruit fruitdescription = fruit.s ! Sg ++ "is" ++ fruitdescription.s;
    -- DescribeFruitPl fruit fruitdescription = fruit.s ! Pl ++ "are" ++ fruitdescription.s;

    SimpleFruit fruitkind = {s = \\num => "the" ++ fruitkind.s ! num};

    -- DescribedFruit fruitkind fruitdescription = {
    --     s = \\num => "the" ++ fruitdescription.s ++ fruitkind.s ! num
    -- } ;

    Fresh  = {s = "fresh"};
    Delicious  = {s = "delicious"};

    Slice  = regVerb "slice";
    Peel  = regVerb "peel";
    Eat  = regVerb "eat";
    Bite  = regVerb "bite";

    Boy  = regNoun "boy";
    Girl  = regNoun "girl";
    Woman  = irregNoun "woman" "women";
    Man  = irregNoun "man" "men";

    Apple  = regNoun "apple";
    Lemon  = regNoun "lemon";
    Orange  = regNoun "orange";
    Strawberry  = regNoun "strawberry";

param
    Number = Sg | Pl;

oper
    regNoun : Str -> {s : Number => Str}  = \n -> {
        s = table {
            Sg => n;
            Pl => case n of {
                x + "y" => x + "ies";
                _ => n + "s"
                }
        }
    };
    irregNoun : Str -> Str -> {s : Number => Str}  = \nsg,npl -> {
        s = table {
            Sg => nsg;
            Pl => npl
        }
    };
    regVerb : Str -> {s : Number => Str}  = \v -> {
        s = table {
            Sg => v + "s";
            Pl => v
        }
    };

}
