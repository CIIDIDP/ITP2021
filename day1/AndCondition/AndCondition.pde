void setup() {
    if (a() & b()) {
        println("&");
    }
    println("---");
    if (a() && b()) {
        println("&&");
    }
    println("---");
}

boolean a() {
    println("  a()");
    return false; // change this to `true`
}

boolean b() {
    println("  b()");
    return true;
}
