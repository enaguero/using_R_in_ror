require_relative "csv_loaders/flowers_loader"
require_relative "csv_loaders/species_loader"

class CsvManager
  def load_data(species_file_path,flower_file_path)
    @species_loader = SpeciesLoader.new(species_file_path)
    @species_loader.load_data

    @flowers_loader = FlowersLoader.new(flower_file_path)
    @flowers_loader.load_data
  end
end

manager = CsvManager.new()

species_file_path = Rails.root.join('db','initial_data', 'species_data.csv')
flower_file_path = Rails.root.join('db','initial_data', 'flowers_data.csv')

manager.load_data(species_file_path,flower_file_path)
