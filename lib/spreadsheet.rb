require "csv"
class Spreadsheet
    def initialize(file)
        @file = file
    end
    def open_spreadsheet
        print "Please enter the Office Group Name: "
        user_input = gets.chomp
        print "Please enter the date: "
        user_date = gets.chomp
        appointments = 0
        offices = CSV.read('../calendar1.csv',headers:true)
        offices.each do |office|
            appointments += 1 if office["Office Group Name"] == user_input && office["Starts At"] == user_date
        end
        print "#{appointments} appointments booked at #{user_input} on #{user_date}"
    end
end

