# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :bolsao do
    dataentrada "MyString"
    horarioatuacao "MyString"
    datasaida "MyString"
    campo "MyString"
    motivo "MyString"
    bolsadicional "MyString"
    bolsistao nil
    setor nil
  end
end
