def add(num1, num2)
  num1+num2
end

def subtract(num1, num2)
  num1-num2
end

def sum(array_of_num)
  sumz = 0
  array_of_num.each do |number|
    sumz += number
  end
  sumz
end

def multiply(num1, num2)
  num1 * num2
end

def power(num1,num2)
  ans = num1
  until num2 == 1
    ans = multiply(num1,ans)
    num2 -= 1
  end
  ans
end

def factorial(num)
  ans = 1
  if num > 0
    until num == 1
      ans = multiply(num, ans)
      num -= 1
    end
  end
  ans
end
