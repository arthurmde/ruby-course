number = [1, 2, 3, 4, 5, 6]
number[2]    #=> 3
number[100]  #=> nil
number[-3]   #=> 4
number[2, 3] #=> [3, 4, 5]
number[1..4] #=> [2, 3, 4, 5]

number.first #=> 1
number.last  #=> 6
number.first(3) #=> [1, 2, 3]
number.last(3)  #=> [4, 5, 6]
