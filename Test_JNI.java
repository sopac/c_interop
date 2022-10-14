
public class Test_JNI {

    static {
        System.loadLibrary("work");
    }
    
    public static void main(String[] args) {
        Test_JNI n = new Test_JNI();
        n.sayHello();
        System.out.println(n.calculate(40));
    }

    // Declare a native method sayHello() that receives no arguments and returns void
    private native void sayHello();
    private native int calculate(int max);
}

//javac Test_JNI.java
//javac -h . Test_JNI.java
//java -Djava.library.path=. Test_JNI 