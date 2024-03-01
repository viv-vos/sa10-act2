module GildedRose
  def self.new(name, days_remaining, quality)
    klass_for(name).new(quality, days_remaining)
  end

  def self.klass_for(name)
    case name
    when 'Normal Item'
      Normal
    when 'Aged Brie'
      Brie
    when 'Sulfuras, Hand of Ragnaros'
      Item
    when 'Backstage passes to a TAFKAL80ETC concert'
      Backstage
    end
  end

  class Item


    def tick

    end
  end


  class Backstage < Item
    def tick
      @days_remaining -= 1
      return   if @quality >= 50
      return @quality = 0 if @days_remaining < 0

      @quality += 1
      @quality += 1 if @days_remaining < 10
      @quality += 1 if @days_remaining < 5
    end
  end

  class Normal
  class Brie
  class Sulfuras
  class Backstage
end
