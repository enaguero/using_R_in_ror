require_relative 'csv_loader'

class FlowersLoader < CsvLoader

  def load_data
    read_csv
    @readed_data.each do |flower_data|
      #TODO:Incorporate transaction
      species = Species.find_by_name(flower_data[4])
      Flower.create!(sepal_length:flower_data[0],sepal_width:flower_data[1],petal_length:flower_data[2],petal_width:flower_data[3])
    end
  end
end
