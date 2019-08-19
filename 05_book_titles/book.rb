class Book
# write your code here
    attr_reader :title

    def title=(t)
        sarray = t.split(' ')
        sol = []
        conjunctions = ['and', 'or', 'but', 'so', 'for', 'nor', 'yet']
        articles = ['the', 'a', 'an']
        prepositions = ['in', 'with', 'before', 'behind', 'of', 'out', 'about', 'till', 'to', 'near']
        sarray.each do |word|
            if ((!conjunctions.include? word) && (!articles.include? word) && (!prepositions.include? word))
                sol.push(word.capitalize)
            else 
                sol.push(word)
            end
        end
        sol[0] = sol[0].capitalize
        @title = sol.join(' ')
    end 
end