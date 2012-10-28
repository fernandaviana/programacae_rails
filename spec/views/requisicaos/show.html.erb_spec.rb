require 'spec_helper'

describe "requisicaos/show" do
  before(:each) do
    @requisicao = assign(:requisicao, stub_model(Requisicao,
      :datarequisicao => "Datarequisicao",
      :quantidadebolsista => 1,
      :horariobolsista => "Horariobolsista",
      :assunto => "Assunto",
      :nomedebolsista => "Nomedebolsista",
      :setor => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Datarequisicao/)
    rendered.should match(/1/)
    rendered.should match(/Horariobolsista/)
    rendered.should match(/Assunto/)
    rendered.should match(/Nomedebolsista/)
    rendered.should match(//)
  end
end
