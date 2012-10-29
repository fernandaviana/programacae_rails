# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :bolsistao do
    matricula "MyString"
    numeropasta "MyString"
    nomebolsista "MyString"
    endereco "MyString"
    bairro "MyString"
    cidade "MyString"
    estado "MyString"
    telefoneresidencial "MyString"
    telefonecelular "MyString"
    email "MyString"
    cpf "MyString"
    rg "MyString"
    situacao "MyString"
    nomebanco "MyString"
    numeroagencia "MyString"
    numeroconta "MyString"
    semestreinicialcurso 1
    anoinicialcurso "MyString"
    observacao "MyText"
    curso nil
  end
end
