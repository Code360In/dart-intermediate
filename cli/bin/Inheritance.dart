import 'BaseClass.dart';

class Inheritance extends BaseClass{
    bool isReady = true;
    bool isSwitcheable = true;

    void swiched() => print('switched');

    void test(){
        // super is the way to acces to properties of the class we extends
        super.hi();
    }
}
