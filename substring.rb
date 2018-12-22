print "Enter word: "
word = gets.chomp.downcase
print "Enter dictionary: "
dictionary = gets.chomp[2...-2].split('","')

def substrings(str)
    subs = []
    for x in 0..str.size-1
        for y in x..str.size-1
            subs.push(str[x..y])
        end
    end
    return subs
end

subs = substrings(word)
counts = {}

for word in dictionary do
    if subs.include?(word)
        if !counts.has_key?(word)
            counts[word] = 1
        else
            counts[word] += 1
        end
    end
end

puts counts