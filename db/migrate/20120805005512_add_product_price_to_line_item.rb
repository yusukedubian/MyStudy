class AddProductPriceToLineItem < ActiveRecord::Migration
  def self.up
    add_column :line_items, :price, :demical, :presition => 8, :scale => 2

    say_with_time "Updating Place ..." do
      LineItem.all.each do |lineitem|
         lineitem.update_attribute :price, lineitem.product.price
      end
    end
  end

  def self.down
    remove_column :line_items, :price
  end
end
