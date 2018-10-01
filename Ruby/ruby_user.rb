class User

    attr_accessor:name

    def initialize(name)
        @name = name
    end
    def user_method
        puts "user_method from user class"
    end

end

class Buyer < User

    def buyer_method
        puts "buyer method from buyer class"
    end
end

user_obj = User.new("logu")

puts user_obj.user_method

buyer_obj = Buyer.new("Sushil")
buyer_obj.buyer_method
buyer_obj.user_method


