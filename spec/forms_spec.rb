describe 'Forms' do
    it 'login comn sucesso' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'
        #identificar os elementos do formulário para fazer login
        # com o método fill_in informar o campo e o valor a ser preenchido no mesmo
        fill_in 'userId', with: 'stark'
        fill_in 'passId', with: 'jarvis!'
        #submeter o formulário
        click_button 'Login'

        #buscar um elemento e pergunta se ele é visivel # para ID
        expect(find('#flash').visible?).to be true 
        
        #validar a mesagem na página usando o 'include' se contem tal mensagem
        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
        #forma mais elegante, se exite o conteudo no elemento
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end
end