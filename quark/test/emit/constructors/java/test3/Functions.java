package test3;

public class Functions {
    public static void go() {
        Box<String> box = new Box<String>("Hello World!!!");
        do{System.out.println((box).get());System.out.flush();}while(false);
        do{System.out.println((box).contents);System.out.flush();}while(false);
        do{System.out.println((new Box<String>("Hello World!!!")).get());System.out.flush();}while(false);
        do{System.out.println((new Box<String>("Hello World!!!")).contents);System.out.flush();}while(false);
    }
}
