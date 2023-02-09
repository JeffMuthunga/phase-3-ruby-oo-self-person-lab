# your code goes here
class Person

    attr_accessor :bank_account
    attr_reader :happiness, :hygiene, :name

    def initialize(name, bank_account=25)
        @name = name
        @bank_account = bank_account
        @happiness =8
        @hygiene = 8
    end

    def happiness=(happiness)
       if happiness > 10
            @happiness = 10
       elsif happiness < 0
             @happiness = 0
       else
            @happiness = happiness
       end
    end
    
    def hygiene=(hygiene)
        if hygiene>10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else
            @hygiene = hygiene
        end
    end

    def happy? 
        if self.happiness >7
            true 
        else
            false
        end
    end

    def clean?
        if self.hygiene >7
            true
        else
            false
        end
    end

    def get_paid(amount)
        self.bank_account += amount
        return "all about the benjamins"
    end
    
    def take_bath
        self.hygiene +=4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -=3
        self.happiness +=2
        return "♪ another one bites the dust ♫"
    end

    def call_friend (friend)
        @friend = friend
        self.happiness +=3
       friend.happiness +=3
       return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation (converser, topic)
        if topic == "politics"
            converser.happiness -=2
            self.happiness -=2
            return 'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            converser.happiness +=1
            self.happiness +=1
            return "blah blah sun blah rain"

        else
            return 'blah blah blah blah blah'
        end
    end


        




end