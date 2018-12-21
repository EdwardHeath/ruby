print "Enter string to encode: ";
str = gets.chomp;
print "Enter shift factor: ";
factor = gets.chomp.to_i % 26;

shifted = "";

str.split('').each do |i| 

    if(i.ord.between?(65,90) || i.ord.between?(97,122)) 
        if (i.ord + factor > 122 || (i.ord + factor).between?(91, 96))
            shifted += (i.ord + factor - 26).chr;
        else
            shifted += (i.ord + factor).chr;
        end
    else 
        shifted += i;
    end
end

puts shifted