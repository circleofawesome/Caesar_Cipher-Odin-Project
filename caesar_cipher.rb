puts "Type in your phrase that is to be encoded"
sentence=gets.chomp.split('')
puts "By how many letters do you want to shift?"
shift=gets.chomp.to_i
shift=shift%26
cipher=[]
sentence.each do |letter|
	#num=letter.ord+shift
	num=letter.ord
	if (num>64&&num<91)||(num>96&&num<123)
		num=num+shift
		if num>122||(num>90&&num<97)
			num=num-26
			cipher<<num.chr
		else
			cipher<<num.chr
		end
		
	else
		cipher<<letter
	end
end

print cipher.join