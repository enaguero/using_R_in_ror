require 'csv'

class CsvLoader
  def initialize(path_file)
    @path_file = path_file
  end

  def load_data
  end

  def read_csv
    @readed_data = CSV.read(@path_file, { :col_sep => ',',converters: :numeric})
    @readed_data
  end
end
