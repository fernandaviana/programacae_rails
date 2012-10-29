require 'spec_helper'

describe "bolsistaos/show" do
  before(:each) do
    @bolsistao = assign(:bolsistao, stub_model(Bolsistao,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Matricula/)
    rendered.should match(/Numeropasta/)
    rendered.should match(/Nomebolsista/)
    rendered.should match(/Endereco/)
    rendered.should match(/Bairro/)
    rendered.should match(/Cidade/)
    rendered.should match(/Estado/)
    rendered.should match(/Telefoneresidencial/)
    rendered.should match(/Telefonecelular/)
    rendered.should match(/Email/)
    rendered.should match(/Cpf/)
    rendered.should match(/Rg/)
    rendered.should match(/Situacao/)
    rendered.should match(/Nomebanco/)
    rendered.should match(/Numeroagencia/)
    rendered.should match(/Numeroconta/)
    rendered.should match(/1/)
    rendered.should match(/Anoinicialcurso/)
    rendered.should match(/MyText/)
    rendered.should match(//)
  end
end
