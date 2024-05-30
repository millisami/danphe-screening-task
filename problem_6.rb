# app/models/shop.rb
class Shop < ApplicationRecord
  has_many :products
end

# app/models/product.rb
class Product < ApplicationRecord
  belongs_to :shop
  has_many :product_categories
  has_many :categories, through: :product_categories
  has_many :prices
end

# app/models/category.rb
class Category < ApplicationRecord
  has_many :product_categories
  has_many :products, through: :product_categories
end

# app/models/product_category.rb
class ProductCategory < ApplicationRecord
  belongs_to :product
  belongs_to :category
end

# app/models/price.rb
class Price < ApplicationRecord
  belongs_to :product
end

# Migrations to create the database tables
class CreateShops < ActiveRecord::Migration[7.1]
  def change
    create_table :shops do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end

class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.references :shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end

class CreateProductCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :product_categories do |t|
      t.references :product, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreatePrices < ActiveRecord::Migration[7.1]
  def change
    create_table :prices do |t|
      t.decimal :amount, null: false, precision: 10, scale: 2
      t.date :date, null: false
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end

# Summarization
ER = <<-CROWFOOT
  Shop: has many products
  Product: belongs to a shop and has many categories (through product_categories)
    A product can also have many prices
  Category: has many products (through product_categories).
  ProductCategory: a join table with the many-to-many relationship between products and categories
  Price: belongs to a product and stores different prices for different dates
CROWFOOT