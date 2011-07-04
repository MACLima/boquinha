class Receita < ActiveRecord::Base
  def self.random
    max_id = connection.select_value("select max(id) from receitas")
    rand_id = rand(max_id)
    first(:conditions => "id > #{rand_id}") || last
  end
end
