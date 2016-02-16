sentence="Hello, WORLD!!!".split('')
cipher=[]
sentence.each do |letter|
	if (letter.ord>64&&letter.ord<86)||(letter.ord>96&&letter.ord<118)
		num=letter.ord+5
		cipher<<num.chr
	elsif (letter.ord>85&&letter.ord<91)||(letter.ord>117&&letter.ord<123)
			num=letter.ord-26+5
			cipher<<num.chr
	else
		cipher<<letter
	end
end

print cipher.join