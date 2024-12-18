
document.addEventListener('DOMContentLoaded', function () {
    let timerElement = document.getElementById('timer');
    let time = 60;

    let timerInterval = setInterval(function () {
        if (time <= 0) {
            clearInterval(timerInterval);
            alert('Время вышло!');
            document.querySelector('form').submit();
        } else {
            timerElement.textContent = `Оставшееся время: ${time}s`;
            time--;
        }
    }, 1000);
});
