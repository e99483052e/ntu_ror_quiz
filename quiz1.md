1.請說明 Fixnum (整數) 和 Float (浮點數) 之間的差異 

A:

用除法為例：
	**3 / 2＝1**
	**3.0 / 2 ＝ 1.5**
因為在程式運算裡Fixnum的結果也為整數,故會把小數捨去,而Float則是有浮點數.
	
***

2.今天有兩個字串：

str1 = "Hallo Welt!" 
str2 = " NTU Rails 261!"

請說明以下兩個印出字串的方式的不同處：

puts str1 + str2
puts "#{str1}#{str2}"

A:

puts str1 + str2  
**字串直接連接,會耗損記憶體**

puts "#{str1}#{str2}"
**是以內插方式,把原有的字串叫出印出**
	
***

3.請解釋 array 和 hash 的不同處
	
array 有固定的陣列排序,使用index叫出對應的array的值
hash則可以指定值對應哪個key,想要取哪個值叫出該值的key
	
***

4.請寫一段 code 從 [1, "a string", 3.14, [1,2,3,4]] 這個陣列找出所有非字串的值



***

5.請列出兩種產出亂數的方法

A:

(1)rand(0..10)

(2)array = [1,2,3,4,5]
array.sort_by{rand}
	
***

6.請把 lesson1 程式碼裡的 calculator.rb 裡面的使用者輸入兩個數字的方式改寫成 method，並要有防止使用者亂輸入值的功能

A:
	
def  first
	begin
		puts "please enter the first number:"
		num1 = gets.chomp.to_i
	end while ![1,2,3,4,5,6,7,8,9,10].include?(num1)
  end

def second 
	begin
		puts "please enter the second number:"
		num2 = gets.chomp.to_i
	end while ![1,2,3,4,5,6,7,8,9,10].include?(num2)
end

def check_operation
  begin
    puts "please enter your operation:"
    puts "1) add 2) substract 3) multiply 4) divide"
    operation = gets.chomp.to_i
  end while ![1,2,3,4].include?(operation)

 return operation
end

def calculate(operation, num1, num2)
  case operation  
  when 1 
    puts "your answer is: #{num1 + num2}"
  when 2 
    puts "your answer is: #{num1 - num2}"
  when 3
    puts "your answer is: #{num1 * num2}"
  else
    puts "your answer is: #{num1.to_f / num2.to_f}"
  end
end

#--------------Main program starts here-----------------

puts "Welcome ruby calculator!!!"

num1 = first()
num2 = second()

operation = check_operation()
calculate(operation, num1, num2)
	

***

7.以下這段程式碼：
	
((1 > 3)&&(true == true))||(!!!false)
	
會執行出什麼結果？ 請試試不用 irb 算出結果

A:
	
1
	
***

8.請問 binding.pry 是什麼？ 要如何使用它？
	
binding.pry是攔截呼叫物件,在檢查程式碼時可以放在需要檢查的最後在pry上debug,更能插入在程式碼裡
	
***

9.下面的一段程式碼，請嘗試用其他方法把 if...else...end 簡化成一行
	
var = 5

if var >= 5
  return "var is greater than or equal to 5"
else
  return "var is less than 5"
end# ntu_ror_quiz
# ntu_ror_quiz
	