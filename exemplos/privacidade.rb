class A
  def public_method(a)
    a.private_method
  end

  private
  def private_method(d)
    puts "Privte method"
  end
end

xpto1 = A.new
xpto2 = A.new
xpto1.public_method(xpto2)
