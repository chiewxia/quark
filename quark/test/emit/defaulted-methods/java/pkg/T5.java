package pkg;

public class T5 implements A, C {
    public T5() {}
    public void foo() {
        System.out.println("T5 foo");
    }
    public void bar() {
        System.out.println("A bar");
        (this).foo();
    }
}
