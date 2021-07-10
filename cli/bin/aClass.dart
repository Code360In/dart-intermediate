class aClass{
    int age = 0;
    String name = 'Name';
    // only need to use this. on name collition
    aClass({ age, name }){
        this.age = age;
        this.name = name;
        // to access property use this.age
        //constructor has the same name
    }
    // brackets not needed on string interpolation
    void hi() => print('Hello $name $age');

    // the _ is the sign of intern use 

    static int life = 0;
    // statics reflects on every object of the class as the same

    // private / publics methods with getters and setters are a bad practice.
 
}
