def ftoc(temp)
  temp = temp.to_f
  temp = (temp-32)*5/9
end

def ctof(temp)
  temp = temp.to_f
  temp = temp*9/5+32
end
