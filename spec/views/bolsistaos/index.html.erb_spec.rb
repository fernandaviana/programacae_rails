require 'spec_helper'

describe "bolsistaos/index" do
  before(:each) do
    assign(:bolsistaos, [
      stub_model(Bolsistao,
        :matricula => "Matricula",
        :numeropasta => "Numeropasta",
        :nomebolsista => "Nomebolsista",
        :endereco => "Endereco",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :estado => "Estado",
        :telefoneresidencial => "Telefoneresidencial",
        :telefonecelular => "Telefonecelular",
        :email => "Email",
        :cpf => "Cpf",
        :rg => "Rg",
        :situacao => "Situacao",
        :nomebanco => "Nomebanco",
        :numeroagencia => "Numeroagencia",
        :numeroconta => "Numeroconta",
        :semestreinicialcurso => 1,
        :anoinicialcurso => "Anoinicialcurso",
        :observacao => "MyText",
        :curso => nil
      ),
      stub_model(Bolsistao,
        :matricula => "Matricula",
        :numeropasta => "Numeropasta",
        :nomebolsista => "Nomebolsista",
        :endereco => "Endereco",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :estado => "Estado",
        :telefoneresidencial => "Telefoneresidencial",
        :telefonecelular => "Telefonecelular",
        :email => "Email",
        :cpf => "Cpf",
        :rg => "Rg",
        :situacao => "Situacao",
        :nomebanco => "Nomebanco",
        :numeroagencia => "Numeroagencia",
        :numeroconta => "Numeroconta",
        :semestreinicialcurso => 1,
        :anoinicialcurso => "Anoinicialcurso",
        :observacao => "MyText",
        :curso => nil
      )
    ])
  end

  it "renders a list of bolsistaos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Matricula".to_s, :count => 2
    assert_select "tr>td", :text => "Numeropasta".to_s, :count => 2
    assert_select "tr>td", :text => "Nomebolsista".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
    assert_select "tr>td", :text => "Telefoneresidencial".to_s, :count => 2
    assert_select "tr>td", :text => "Telefonecelular".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    assert_select "tr>td", :text => "Rg".to_s, :count => 2
    assert_select "tr>td", :text => "Situacao".to_s, :count => 2
    assert_select "tr>td", :text => "Nomebanco".to_s, :count => 2
    assert_select "tr>td", :text => "Numeroagencia".to_s, :count => 2
    assert_select "tr>td", :text => "Numeroconta".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Anoinicialcurso".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
