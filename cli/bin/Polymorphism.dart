import 'BaseClass.dart';
import 'Inheritance.dart';

main(List<String> arguments){
    //
    var baseClass = new BaseClass();

    var inheritance = new Inheritance();

    // For multiple inheritance you need to use mixins.
    /*
    u need to have 2 base clases with no inheritance to create a 3rd with all the properties.
    ex: class Complete extends BaseClass with AnotherClass.
    Where BaseClass and AnotherClass doenst extends any classes.
    */

    // Interfaces and Abstractions works the same as other lenguagues

    //Generics 
    T showThing<T extends num>(T valueA, List<T> items){
        T ret = valueA;
        items.forEach((element) {
            ret = ret + element;
        });

        return ret;
    }

    // This generics can be used on classes as well. Like C#
}
