require 'spec_helper'

describe "bolsista/edit" do
  before(:each) do
    @bolsistum = assign(:bolsistum, stub_model(Bolsistum,
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
    ))
  end

  it "renders the edit bolsistum form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bolsista_path(@bolsistum), :method => "post" do
      assert_select "input#bolsistum_matricula", :name => "bolsistum[matricula]"
      assert_select "input#bolsistum_numeropasta", :name => "bolsistum[numeropasta]"
      assert_select "input#bolsistum_nomebolsista", :name => "bolsistum[nomebolsista]"
      assert_select "input#bolsistum_endereco", :name => "bolsistum[endereco]"
      assert_select "input#bolsistum_bairro", :name => "bolsistum[bairro]"
      assert_select "input#bolsistum_cidade", :name => "bolsistum[cidade]"
      assert_select "input#bolsistum_estado", :name => "bolsistum[estado]"
      assert_select "input#bolsistum_telefoneresidencial", :name => "bolsistum[telefoneresidencial]"
      assert_select "input#bolsistum_telefonecelular", :name => "bolsistum[telefonecelular]"
      assert_select "input#bolsistum_email", :name => "bolsistum[email]"
      assert_select "input#bolsistum_cpf", :name => "bolsistum[cpf]"
      assert_select "input#bolsistum_rg", :name => "bolsistum[rg]"
      assert_select "input#bolsistum_situacao", :name => "bolsistum[situacao]"
      assert_select "input#bolsistum_nomebanco", :name => "bolsistum[nomebanco]"
      assert_select "input#bolsistum_numeroagencia", :name => "bolsistum[numeroagencia]"
      assert_select "input#bolsistum_numeroconta", :name => "bolsistum[numeroconta]"
      assert_select "input#bolsistum_semestreinicialcurso", :name => "bolsistum[semestreinicialcurso]"
      assert_select "input#bolsistum_anoinicialcurso", :name => "bolsistum[anoinicialcurso]"
      assert_select "textarea#bolsistum_observacao", :name => "bolsistum[observacao]"
      assert_select "input#bolsistum_curso", :name => "bolsistum[curso]"
    end
  end
end
