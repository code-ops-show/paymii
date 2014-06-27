class AddMoneyToLineItem < ActiveRecord::Migration
  def change
    add_money :line_items, :price
  end
end
