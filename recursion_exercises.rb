#def fib(n)
 # arr=[]
#def fibo(a,b)
  #if a==8
  #return "end";  
  #end
  #print "#{a},"
 # fibo(b, a+b)
#end
#fibo(0,1)

#end


def fibo(n)
  if (@n1.nil?)
    @n1=0
  else
    @n1=@n2
  end
  if (@n2.nil?)
    @n2=1
  else
    @n2=@n3
  end
  @n3=@n1+@n2
  
  if n<1
    return @n1
  else
    fibo(n-1)
  end
end

def fib(n)
  (@n1.nil?)? (@n1=0) : (@n1=@n2)
  (@n2.nil?)? (@n2=1) : (@n2=@n3)
  @n3=@n1+@n2
  n<1? (return @n1): fib(n-1)
end

def palindrome(str)
  if str.length==1
    return true
  end
  if str[0]==str[-1]
    str.slice!(0,1)
    str.slice!(-1,1)
  else
    return false
  end
  palindrome(str)
end
 
def flatten(arr, index)
#this doesn't need a break case because loops
#automatically end/disappear off the stack when 
#completed...duh
@newarr=[] if (@newarr.nil?)
arr.each_with_index do |val, index|
if val.kind_of?(Array)
  puts "val is #{val}"
  puts "index: #{index}"
  flatten(val, index)
else
@newarr.push(val)
end
end
@newarr
end


def to_roman()

end