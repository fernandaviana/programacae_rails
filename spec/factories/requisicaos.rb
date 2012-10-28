# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :requisicao do
    datarequisicao "MyString"
    quantidadebolsista 1
    horariobolsista "MyString"
    assunto "MyString"
    nomedebolsista "MyString"
    setor nil
  end
end
