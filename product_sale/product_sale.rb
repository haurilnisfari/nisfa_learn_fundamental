class Product 

  attr_reader :price, :tag_1, :tag_2

  def initialize(price, tag_1, tag_2)
    @price = price
    @tag_1 = tag_1
    @tag_2 = tag_2
  end
end

class Discount 

  attr_reader :tag, :type, :amount

  def initialize(tag, type, amount)
    @tag = tag
    @type = type
    @amount = amount
  end

end


product_1 = Product.new("10", "sale", "")
product_2 = Product.new("300", "january-sale", "")
@all_products = []
@all_products << product_1
@all_products << product_2

discount_1 = Discount.new("sale", "0", "10")
discount_2 = Discount.new("january-sale", "1", "10")
@all_discounts = []
@all_discounts << discount_1
@all_discounts << discount_2

class ProductDiscount

  def initialize(all_products, all_discounts)
    @all_products = all_products
    print @all_products
    @all_discounts = all_discounts
    print @all_discounts
  end

  def lowest_price
    if !@all_discounts.empty?
      total = []
      for product in @all_products
        lp = []
        tags = []
        tags << product.tag_1
        tags << product.tag_2

        for tag in tags
          disc = @all_discounts.select do |discount|
            discount.tag == tag
          end.first

          if !disc.nil?
            if disc.type == "1"
              price = product.price.to_i
              disc_price = (10*price)/100
              t_price = price - disc_price

            elsif disc.type == "0"
              t_price = product.price.to_i

            else
              t_price = product.price.to_i          
            end

          else
            t_price = product.price.to_i
          end

          lp << t_price
          min = lp.min

        end
        total << min
      end
      return total.map!(&:to_i).sum
    else
      nil
    end
    
  end
 
end


x = ProductDiscount.new(@all_products, @all_discounts)
y = x.lowest_price
print y
