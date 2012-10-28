require 'spec_helper'

describe "setors/show" do
  before(:each) do
    @setor = assign(:setor, stub_model(Setor,
      :nomesetor => "Nomesetor",
      :coordenador => "Coordenador",
      :totalsetor => 1,
      :emailsetor => "Emailsetor",
      :ramal => "Ramal"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nomesetor/)
    rendered.should match(/Coordenador/)
    rendered.should match(/1/)
    rendered.should match(/Emailsetor/)
    rendered.should match(/Ramal/)
  end
end
