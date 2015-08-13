class Phone

  attr_reader(:area_code, :last_seven, :type)

  define_method(:initialize) do |attributes|
    @area_code = attributes.fetch(:area_code)
    @last_seven = attributes.fetch(:last_seven)
    @type = attributes.fetch(:type)
  end


end
