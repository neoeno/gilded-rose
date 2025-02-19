# frozen_string_literal: true

class ConjuredUpdater
  def handles?(item)
    item.name.start_with?('Conjured')
  end

  def update(item)
    item.sell_in -= 1
    return if item.quality <= 0

    item.quality -= 1
    item.quality -= 1 if item.quality > 0
    item.quality -= 1 if item.sell_in <= 0 && item.quality > 0
    item.quality -= 1 if item.sell_in <= 0 && item.quality > 0
  end
end
