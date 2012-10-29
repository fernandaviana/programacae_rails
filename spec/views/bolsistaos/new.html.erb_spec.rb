require 'spec_helper'

describe "bolsistaos/new" do
  before(:each) do
    assign(:bolsistao, stub_model(Bolsistao,
      :matricula => "MyString",
      :numeropasta => "MyString",
      :nomebolsista => "MyString",
      :endereco => "MyString",
      :bairro => "MyString",
      :cidade => "MyString",
      :estado => "MyString",
      :telefoneresidencial => "MyString",
      :telefonecelular => "MyString",
      :email => "MyString",
      :cpf => "MyString",
      :rg => "MyString",
      :situacao => "MyString",
      :nomebanco => "MyString",
      :numeroagencia => "MyString",
      :numeroconta => "MyString",
      :semestreinicialcurso => 1,
      :anoinicialcurso => "MyString",
      :observacao => "MyText",
      :curso => nil
    ).as_new_record)
  end

  it "renders new bolsistao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bolsistaos_path, :method => "post" do
      assert_select "input#bolsistao_matricula", :name => "bolsistao[matricula]"
      assert_select "input#bolsistao_numeropasta", :name => "bolsistao[numeropasta]"
      assert_select "input#bolsistao_nomebolsista", :name => "bolsistao[nomebolsista]"
      assert_select "input#bolsistao_endereco", :name => "bolsistao[endereco]"
      assert_select "input#bolsistao_bairro", :name => "bolsistao[bairro]"
      assert_select "input#bolsistao_cidade", :name => "bolsistao[cidade]"
      assert_select "input#bolsistao_estado", :name => "bolsistao[estado]"
      assert_select "input#bolsistao_telefoneresidencial", :name => "bolsistao[telefoneresidencial]"
      assert_select "input#bolsistao_telefonecelular", :name => "bolsistao[telefonecelular]"
      assert_select "input#bolsistao_email", :name => "bolsistao[email]"
      assert_select "input#bolsistao_cpf", :name => "bolsistao[cpf]"
      assert_select "input#bolsistao_rg", :name => "bolsistao[rg]"
      assert_select "input#bolsistao_situacao", :name => "bolsistao[situacao]"
      assert_select "input#bolsistao_nomebanco", :name => "bolsistao[nomebanco]"
      assert_select "input#bolsistao_numeroagencia", :name => "bolsistao[numeroagencia]"
      assert_select "input#bolsistao_numeroconta", :name => "bolsistao[numeroconta]"
      assert_select "input#bolsistao_semestreinicialcurso", :name => "bolsistao[semestreinicialcurso]"
      assert_select "input#bolsistao_anoinicialcurso", :name => "bolsistao[anoinicialcurso]"
      assert_select "textarea#bolsistao_observacao", :name => "bolsistao[observacao]"
      assert_select "input#bolsistao_curso", :name => "bolsistao[curso]"
    end
  end
end
