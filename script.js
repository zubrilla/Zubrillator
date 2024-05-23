document.getElementById("startButton").addEventListener("click", function() {
    // Отправить запрос на бэкэнд для начала теста
    fetch("/startQuiz")
        .then(response => response.json())
        .then(data => {
            // Отобразить вопрос теста пользователю
            document.getElementById("output").innerText = data.question;
        });
});
