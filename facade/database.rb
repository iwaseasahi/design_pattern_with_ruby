class Database
  class << self
    def get_properties(dbname)
      prop = []
      file_name = dbname + '.txt'
      File.open(file_name) do |file|
        file.each_line do |line|
          array = line.chomp.split('=')
          prop << { email: array[0], name: array[1] }
        end
      end
      prop
    end
  end
end
