class Backpack
  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    prepare
  end

  def items
    @items
  end

  def prepare
      appropriate_clothing
      bring_gym_shoes
      bring_packed_lunch
  end


  # Prints a summary packing list for Melinda's backpack
  def melindas_backpack
    packing_list = []
    packing_list << "Melinda, here's your packing list!"
    packing_list << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    packing_list << ""

    @items.each do |item|
      packing_list << "- #{item}"
    end
    packing_list.join("\n")
  end

  def appropriate_clothing
    weather = @attributes[:weather]
    @items = ['pants','shirt']
      if weather == 'rainy'
        @items << 'umbrella'
      elsif weather == 'cold'
        @items << 'jacket'
      end
  end

  def bring_gym_shoes
    day_of_week = @attributes[:day_of_week]
    if day_of_week == 'monday' || day_of_week == 'thursday'
      @items << 'gym shoes'
    end
  end

  def bring_packed_lunch
    day_of_week = @attributes[:day_of_week]
    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    end
  end

end
