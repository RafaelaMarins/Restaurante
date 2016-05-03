# coding: utf-8

feature 'gerenciar Cliente' do

	scenario 'incluir Cliente' do
		
		visit new_cliente_path
		preencher_e_verificar_cliente
	end

	scenario 'alterar Cliente' do
		
		cliente = FactoryGirl.create(:cliente)
		visit edit_cliente_path(cliente)
		preencher_e_verificar_cliente
	end
	
	scenario 'excluir Cliente' do
		cliente = FactoryGirl.create(:cliente)
		visit clientes_path
		click_link 'Excluir'
	end

	def preencher_e_verificar_cliente

		fill_in 'Nome', :with => "Rafaela"
		fill_in 'CPF', :with => "123123123"
		fill_in 'Endereço', :with => "Rua zero"
		fill_in 'Numero', :with => "29"
		fill_in 'Cidade', :with => "Campos"
		fill_in 'Estado', :with => "RJ"
		fill_in 'Email', :with => "rafaela.marins0@gmail.com"

		click_button 'Salvar'

		expect(page).to have_content 'Nome: Rafaela'
		expect(page).to have_content 'CPF: 123123123'
		expect(page).to have_content 'Endereço: Rua zero'
		expect(page).to have_content 'Numero: 29'
		expect(page).to have_content 'Cidade: Campos'
		expect(page).to have_content 'Estado: RJ'
		expect(page).to have_content 'Email: rafaela.marins0@gmail.com'

	end
end
	
