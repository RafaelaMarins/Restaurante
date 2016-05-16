FactoryGirl.define do
  factory :entrega do
    data "MyString"
    situacao "MyString"
    Pedido nil
  end
end
