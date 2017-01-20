class A {
  public void public_method(A x){
    x.x_private(x);
  }

  private void private_method(A x) {
    System.out.println("Private method");
  }
}

class Teste{
  public static void main(String[] args){
    A xpto1 = new A();
    A xpto2 = new A();
    xpto1.private_method(xpto1);
  }
}
