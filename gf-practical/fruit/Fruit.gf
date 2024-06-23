abstract Fruit = {

-- Author: Laurette Marais
-- Date: 2024-06-23

flags coding = utf8 ;

flags startcat = Statement;

cat
   Statement; Fruit; FruitKind; FruitDescription; Action; Actor;

fun
    ActOnFruitSg : Actor -> Action -> Fruit -> Statement;
    -- ActOnFruitPl : Actor -> Action -> Fruit -> Statement;

    DescribeFruitSg : Fruit -> FruitDescription -> Statement;
    -- DescribeFruitPl : Fruit -> FruitDescription -> Statement;

    SimpleFruit : FruitKind -> Fruit;
    -- DescribedFruit : FruitKind -> FruitDescription -> Fruit ;

    Fresh : FruitDescription;
    Delicious : FruitDescription;

    Slice : Action;
    Peel : Action;
    Eat : Action;
    Bite : Action;

    Boy : Actor;
    Girl : Actor;
    Woman : Actor;
    Man : Actor;

    Apple : FruitKind;
    Lemon : FruitKind;
    Orange : FruitKind;
    Strawberry : FruitKind;

}
