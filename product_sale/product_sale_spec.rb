require 'rspec'
require_relative 'product_sale'

describe 'ProductDiscount' do
  describe '#lowest_price' do
    it 'should return nil when calculate empty product' do
      all_discounts = []
      prod_disc = ProductDiscount.new('', all_discounts)
      expect(prod_disc.lowest_price).to eq(nil)
    end

    it 'should return nil when calculate product without discount' do
      all_products = []
      prod = Product.new("10", "", "")
      all_products << prod
      prod_disc = ProductDiscount.new(all_products, '')
      expect(prod_disc.lowest_price).to eq(nil)
    end

    it 'should return fixed price when calculate product with unknown discount' do
      all_products = []
      prod = Product.new("10", "sale", "")
      all_products << prod
      all_discounts = []
      disc = Discount.new("january-sale", "1", "10")
      all_discounts << disc
      prod_disc = ProductDiscount.new(all_products, all_discounts)
      expect(prod_disc.lowest_price).to eq(10)
    end

    it 'should return discount price when calculate product with discount type=1' do
      all_products = []
      prod = Product.new("10", "january-sale", "")
      all_products << prod
      all_discounts = []
      disc = Discount.new("january-sale", "1", "10")
      all_discounts << disc
      prod_disc = ProductDiscount.new(all_products, all_discounts)
      expect(prod_disc.lowest_price).to eq(9)
    end

    it 'should return fixed price when calculate product with discount type=0' do
      all_products = []
      prod = Product.new("10", "sale", "")
      all_products << prod

      all_discounts = []
      disc = Discount.new("sale", "0", "10")
      all_discounts << disc

      prod_disc = ProductDiscount.new(all_products, all_discounts)
      expect(prod_disc.lowest_price).to eq(10)
    end

    it 'should return lowesr price when calculate product with more than 1 discount' do
      all_products = []
      prod = Product.new("10", "sale", "january-sale")
      all_products << prod

      all_discounts = []
      disc_1 = Discount.new("sale", "0", "10")
      all_discounts << disc_1
      disc_2 = Discount.new("january-sale", "1", "10")
      all_discounts << disc_2

      prod_disc = ProductDiscount.new(all_products, all_discounts)
      expect(prod_disc.lowest_price).to eq(9)
    end

    it 'should return lowest price total when calculate more than 1  product with more than 1 discount' do
      all_products = []
      prod_1 = Product.new("10", "sale", "january-sale")
      all_products << prod_1
      prod_2 = Product.new("200", "sale", "january-sale")
      all_products << prod_2

      all_discounts = []
      disc_1 = Discount.new("sale", "0", "10")
      all_discounts << disc_1
      disc_2 = Discount.new("january-sale", "1", "10")
      all_discounts << disc_2

      prod_disc = ProductDiscount.new(all_products, all_discounts)
      expect(prod_disc.lowest_price).to eq(189)
    end
  end
 
end


