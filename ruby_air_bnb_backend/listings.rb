
class Listings
    attr_accessor :host, :beds, :dates_available, :cancellation, :guest, :reviews, :price

    def initialize(host, beds, dates_available, price) 
        @host = host
        @beds = beds 
        @dates_available = dates_available
        @cancellation = "strict"
        @guests = {}
        @reviews = {}
        @price = price
    end

    def reserve_pay(name, number_nights, dates)
        dates.each do |date|
            if dates_available.delete(date) 
                puts "#{date} is available"
            else
                puts "#{date} is not available"
                return
            end
        end
        @guests[name] = dates
        return @price * number_nights
    end

    def leave_review(reviewer, review)
        @reviews[:"#{reviewer}"] = review
    end
end

condo1 = Listings.new("anna", 4, ["4/6/19", "4/7/18"], 200)
condo1.reserve_pay("anna", 2, ["4/6/19"])
condo1.reserve_pay("anna", 2, ["4/6/19"])


