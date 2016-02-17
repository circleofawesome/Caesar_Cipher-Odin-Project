def caesar_cipher(sentence,shift)
sentence=sentence.split('')
shift=shift.to_i
shift=shift%26
cipher=[]
sentence.each do |letter|
	num=letter.ord
	case num
	when (64..91)
		#caps
		num=num+shift
		if num>90
			num=num-26
			cipher<<num.chr
		else
			cipher<<num.chr
		end
	when (96..123)
		#lower case
		num=num+shift
		if num>122
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
end

#test
caesar_cipher("hello, world!",7)