class Import
  class << self

    def excel(file)
      xls = Roo::Spreadsheet.open(file)

      if xls.first_column == 1 && xls.last_column == 8
        puts "Importing Hagercad calculatie"
      else
        puts xls.info

        raise "error"
      end


      # xls.each do |hash|
      #   puts hash.join(" ") if  hash.count == 3
      # end
    end

    def csv
      puts "Importing excel"
    end

    def txt
      puts "Importing excel"
    end

  end
end
