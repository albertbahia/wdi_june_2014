class Subway

    attr_reader(:name, :train_lines)

    def initialize(name, train_lines)
        @name = name
        @train_lines = train_lines
    end


    def list_lines
        subway_info = train_lines.map { |train| train.line_name }
        subway_info.join("\n")
    end
    
end
