# coding: utf-8

require 'spec_helper'

feature 'gerenciar setor' do

  scenario 'incluir setor' do # , :js => true do

    visit new_setor_path

    preencher_e_verificar_setor

    

  end

  scenario 'alterar setor' do #, :js => true do

    setor = FactoryGirl.create(:setor)

    visit edit_setor_path(setor)

    preencher_e_verificar_setor



  end

   scenario 'excluir setor' do #, :javascript => true do

       setor = FactoryGirl.create(:setor)

        visit setors_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_setor

     
     fill_in 'Nomesetor', :with => "Coordenação de Apoio ao Estudante"
     fill_in 'Coordenador', :with => "Inês"
     fill_in 'Totalsetor', :with => 7 
     fill_in 'Emailsetor', :with => "cae@iff.edu.br"
     fill_in 'Ramal', :with => "2233"

      click_button 'Salvar'

      
      page.should have_content 'Nomesetor: Coordenação de Apoio ao Estudante'
      page.should have_content 'Coordenador: Inês'
      page.should have_content 'Totalsetor: 7'
      page.should have_content 'Emailsetor: cae@iff.edu.br'   
      page.should have_content 'Ramal: 2233'

   end
end



