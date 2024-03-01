module GildedRose

  DEFAULT_CLASS = Item
  SPECIALIZED_CLASSES = {'Normal Item' => Normal,
  'Aged Brie' => Brie,
  'Backstage passes to a TAFKAL80ETC concert' => Backstage}


  def self.new(name, days_remaining, quality)
    (SPECIALIZED_CLASSES[name] || DEFAULT_CLASS).new(quality, days_remaining)
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
