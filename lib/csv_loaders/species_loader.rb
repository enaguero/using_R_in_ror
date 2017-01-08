require_relative 'csv_loader'

class SpeciesLoader < CsvLoader

  def load_data
    read_csv

    @readed_data.each do |flower_data|
      #TODO:Incorporate transaction
      Species.create!(name:flower_data[0])
    end
  end
end
