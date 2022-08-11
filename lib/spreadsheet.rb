require "csv"
class Spreadsheet
    def initialize(file)
        @file = file
    end
    def open_spreadsheet(file)
        table = CSV.parse(File.read(file), headers: true)
    end
end

