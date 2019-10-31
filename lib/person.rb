require 'pry'
class Person
    attr_reader :name, :hygiene, :happiness
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @hygiene = 8
        @happiness = 8
    end
    def happiness=(num)
        @happiness = num
        @happiness = 0 if num < 0
        @happiness = 10 if num > 10
     end
    def hygiene=(num)
       @hygiene = num
       @hygiene = 0 if num < 0
       @hygiene = 10 if num > 10
    end   

    def clean?
        hygiene > 7
    end
    def happy?
        happiness > 7
    end
    def get_paid(salary)
        self.bank_account += salary
        'all about the benjamins'
    end
    def take_bath
        self.hygiene += 4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end
    def work_out
        self.happiness += 2
        self.hygiene -=3
        '♪ another one bites the dust ♫'
    end
    def call_friend(friend)
        self.happiness +=3
        friend.happiness +=3
        "Hi #{friend.name}! It's #{name}. How are you?"
    end
    def start_conversation(name, topic)
        if topic == "politics"
            self.happiness -=2
            name.happiness -=2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            name.happiness +=1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
    end
end
end



    

    

    
    
