# Write a program to implement a simple bank account. 
# def banking_app
# 	# Your code here.
# 	password = "aiden123"
# 	puts "Welcome to the banking app. \nWhat is your password?"
# 	passwordfailcount = 0
# 	inputpassword = gets.chomp
	
# 	while passwordfailcount <3
# 		if inputpassword != password
# 			passwordfailcount += 1
# 			puts "Incorrect password. Try again. FAILED ATTEMPT #{passwordfailcount}"
# 			inputpassword = gets.chomp
# 		else
# 			login_method
# 		end
# 	end
# end

# def login_method
# 	balance = 0
# 	puts "What would you like to do? (options: balance, deposit, withdraw)"
# 	input = gets.chomp
# 	if input == "balance"
# 		system("clear")
# 		puts "Your balance is #{balance}"
# 		login_method
# 	elsif input == "deposit"
# 		system("clear")
# 		puts "How much would you like to deposit?"
# 		input = gets.chomp.to_i
# 		balance = balance + input
# 		puts "Your deposit is #{balance}"
# 		login_method
# 	elsif input == "withdraw"
# 		system("clear")
# 		puts "How much would you like to withdraw?"
# 		input = gets.chomp.to_i
# 		if input < balance
# 			puts "You have withdrawn #{input}. Your new balance is #{balance}"
# 		else
# 			puts "Overdrawn! No money for you."
# 		end
# 	else
# 		puts "Invalid selection! Try one of the following options."
# 	end 
# end

# banking_app

# Hi Matt/Glen. I've got the majority of the code here, but I'm having some issues I
# can't quite work out yet. The 'looping' of the program, so that it prompts for a balance, deposit or withdraw
# command after you finish entering a value. As I have just called the method again,
# my balance variable keeps resetting itself to 0. I'll do some research and ask my
# peers for help, but will submit this to save the work I've done. Cheers.

def banking_app
	# Your code here.
	password = "aiden123"
	puts "Welcome to the banking app. \nWhat is your password?"
	passwordfailcount = 0
	inputpassword = gets.chomp
	
		if inputpassword != password
			puts "Incorrect password"
			return
		end
	
	balance = 0
	loop do
		puts "What would you like to do? (options: balance, deposit, withdraw)"
		input = gets.chomp
		if input == "balance"
			system("clear")
			puts "Your balance is #{balance}"
		elsif input == "deposit"
			system("clear")
			puts "How much would you like to deposit?"
			input = gets.chomp.to_i
			balance = balance + input
			puts "Your deposit is #{balance}"
		elsif input == "withdraw"
			system("clear")
			puts "How much would you like to withdraw?"
			input = gets.chomp.to_i
			if input < balance
				balance = balance - input
				puts "You have withdrawn #{input}. Your new balance is #{balance}"
			else
				puts "Overdrawn! No money for you."
			end
		else
			puts "Invalid selection! Try one of the following options."
		end 
	end
end

banking_app
