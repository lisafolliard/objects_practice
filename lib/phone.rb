class Phone

  attr_reader(:area_code, :last_seven, :p_type)

  define_method(:initialize) do |attributes|
    @area_code = attributes.fetch(:area_code)
    @last_seven = attributes.fetch(:last_seven)
    @p_type = attributes.fetch(:p_type)
  end


end
