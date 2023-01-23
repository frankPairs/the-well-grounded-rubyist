## Chapter 2 - Objects, methods, and local variables

- Objects are the core of Ruby, everything is an object!
- Objects have tha ability to "learn" behaviors (methods) in runtime, besides the ones inherit from the class.
- The dot (.) is the message-sending operator. The message is sent to the **receiver**. In the next example, obj is the receiver and talk is the message.
  ```
    obj.talk()
  ```
- Ruby assumes that the name of the method within the object will be the same as the name of the message.
- Method arguments can be:
  - **Optional**
  ```
    def obj.talk(*messages)
      puts messages
    end
  ```
  - **Optional with a default value**
  ``` 
    def obj.talk(message = "Hello")
      puts message
    end
  ```
  - **Required**
  ``` 
    def obj.talk(message)
      puts message
    end
  ```
- When you call a method, adding parenthesis is optional most of the cases, but it is a good practice to use them.
- When a method takes no arguments, parenthesis are not needed.
```
  def obj.welcome_users
    puts "Hi there!"
  end
```
- ```return``` keyword is not mandatory unless you want to return multiple values. Anyway, it is recommended to use it as makes the method more readable.
```
  def obj.add(n1, n2)
    return n1 + n2
  end
```
- Methods always return a value. When a method does not return anything explicitly, the value returned is **nil**.
```
  def obj.welcome_users
    puts "Hi there!"
  end

  result = obj.welcome_users()

  puts result # nil
```