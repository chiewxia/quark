@doc("hey, here are some docs",
     "here are some more docs",
     "a bunch of docs in fact")
class Test {

    @doc("field docs")
    String name;

    @doc("method docs")
    int test(String param) {
        return 3;
    }

}
