1.請用簡單的方式敘述以下每一行程式碼：
  
   a = 1     ***#a是個變數***
   @a = 2     ***#@a 把資料榜定在物件上***
   @@a = 5      ***#@@a 綁定class本身的資料***
   user = User.new     ***#創新class的object***
   user.name     ***#getter method***
   user.name = "Joe"     ***#setter method***


2.什麼是 module? 請寫一段程式碼說明一個 class 要如何使用一個 module 裡面的 method?
A:
   module不是calss,可以看成是一個工具箱
   要用module裡的method的時候,只可以在其他class裡include來使用,不可new


3.請說明 class 和 instance variable 之間的差別
A:
   instance variable ***綁定物件的資料***
   class variable ***綁定本身的資料***


4.如果今天我為一個叫 User 的 class 產生一個新物件的方式是:
   User.new("Bob", "male", "Engineer")
   請寫出 User class 的 initialize method

   A:
   def initialize(name, gender, profession)
	   @name = name
	   @gender = gender
	   @profession = profession
   end


5.self 在： a. class 裡，method 外面 b. class 裡，instance method 裡 分別是指向什麼?
A:

   a.class 裡，method 外面
   ***self指向class自己***
   
   b.class 裡，instance method 裡
   ***self是指被創出來的某個object***


6.attr_accessor 的功能是什麼?
A:
   attr﹍accessor ***會自動把getter和setter method產生出來***

7.請說明 public 和 private method 之間的不同
A:
   public method  :  可以直接被物件呼叫,所有人都可以存取
   private method  :  不能被物件直接呼叫,只有在類別內不才可以存取


8.Ruby 是如何確保一個 module 的 method 會被 include 它的 class 使用到？ (提示：method lookup)
A:
   為了確保object呼叫的method被使用到,先使用***.ancestors***尋找method的祖先
   
   ***put object.ancestors***

   object 呼叫一個它的class裡面沒有的method,它會依序尋找他的祖先,若有找到有這個method的祖先,就會使用這個祖先類別的method
   
   ***class 類別 < 父類別***