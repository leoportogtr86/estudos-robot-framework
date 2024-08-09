document.getElementById('contactForm').addEventListener('submit', function(event) {
    event.preventDefault();
    
    let name = document.getElementById('name').value;
    let email = document.getElementById('email').value;
    let message = document.getElementById('message').value;
    let formMessage = document.getElementById('formMessage');

    if (name === '' || email === '' || message === '') {
        formMessage.textContent = 'Por favor, preencha todos os campos.';
        formMessage.style.color = 'red';
        formMessage.style.display = 'block';
    } else {
        formMessage.textContent = 'Mensagem enviada com sucesso!';
        formMessage.style.color = 'green';
        formMessage.style.display = 'block';

        // Limpar o formulário após o envio
        document.getElementById('contactForm').reset();
    }
});
