# coding: utf-8
feature 'gerenciar Cardapio' do
    scenario 'incluir Cardapio' do
        visit new_cardapio_path
        preencher_e_verificar_cardapio
  end

    scenario 'alterar Cardapio' do
    
        cardapio = FactoryGirl.create(:cardapio)
        visit edit_cardapio_path(cardapio)
        preencher_e_verificar_cardapio
  end
  
    scenario 'excluir Cardapio' do
        cardapio = FactoryGirl.create(:cardapio)
        visit cardapios_path
        click_link 'Excluir'
  end

    def preencher_e_verificar_cardapio
        fill_in 'Nome', :with => "Salada"
        fill_in 'Descrição', :with => "Alface"
        fill_in 'Preço', :with => "10.0"
             

        click_button 'Salvar'

        expect(page).to have_content 'Nome: Salada'
        expect(page).to have_content 'Descrição: Alface'
        expect(page).to have_content 'Preço: 10.0'
        

  end
end
  
