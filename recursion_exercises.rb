def fib(n)
  (@n1.nil?)? (@n1=0) : (@n1=@n2-@n1)
  (@n2.nil?)? (@n2=1) : (@n2=@n2+@n1)
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
@newarr=[] if (@newarr.nil?)
arr.each_with_index do |val, index|
if val.kind_of?(Array)
  flatten(val, index)
else
@newarr.push(val)
end
end
@newarr
end

def to_roman(int)
if int==1 
  @newstr<< "I"
end
@newstr ||=""
roman_mapping = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I"
}
roman_mapping.each { |key, value|
  
  if int>=key&&@newstr[-1]!="I"
    @newstr<< value*(int/key)
    if (int%key!=0)
    to_roman(int%key)
    end
  end
  
}
  @newstr
end

def to_roman(int)
int=int.to_s
@newstr ||=""
roman_mapping = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I"
}
  char=int[0]
  puts "now char is #{char}"
  newindex=(int.length-1)-int.index(char)
  char=char.to_i
  puts "#{10**newindex}"
  puts "char is #{char}"
  
  if char>=9
    @newstr<< roman_mapping[9*(10**newindex)]
    int=int.to_s
    int[0]=""
    puts "int is  #{int}"
    to_roman(int)
  elsif char>=5
    @newstr<< roman_mapping[5*(10**newindex)]
    @newstr<< roman_mapping[(char%5)*(10**newindex)]
    int=int.to_s
    int[0]=""
    puts "int is  #{int}"
    to_roman(int)
  elsif char==4
    @newstr<< roman_mapping[4*(10**newindex)]
    int=int.to_s
    int[0]=""
    puts "int is  #{int}"
    to_roman(int)
  elsif char>=1
    puts "check"
    char.times do
      @newstr<< roman_mapping[1*(10**newindex)]
    end
    puts @newstr
    int=int.to_s
    int[0]=""
    puts "int is #{int}"
    if int!=""
      to_roman(int)
    end
      
  end
@newstr
end

to_roman(142)

def to_integer(str)
@newint ||= 0
roman_mapping = {
  "M" => 1000,
  "CM" => 900,
  "D" => 500,
  "CD" => 400,
  "C" => 100,
  "XC" => 90,
  "L" => 50,
  "XL" => 40,
  "X" => 10,
  "IX" => 9,
  "V" => 5,
  "IV" => 4,
  "I" => 1
}
roman_mapping.each { |key, value|
  if (str[0..1])==key
    @newint+=value
    str[0..1]=""
    to_integer(str)
  elsif str[0]==key
    @newint+=value
    str[0]=""
    to_integer(str)
  end
}
  @newint
end
to_integer("MCM")