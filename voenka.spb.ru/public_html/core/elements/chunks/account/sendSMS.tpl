<h1>Отправить смс клиенту</h1>
<p>Введите номер в формате +79995552356, то есть, без тире, восьмерки в начале и так далее, введите текст и отправляйте сообщение!</p>
<p>Конечно, система постарается в случае чего, исправить номер телефона на подходящий формату, но лучше лишний раз судьбу не испытывать.</p>
<div class="form-group">
    <input type="text" name="phone" value="" id="phone" placeholder="Номер телефона" class="form-control">
</div>
<div class="form-group">
    <textarea name="text" id="text" cols="30" id="text" rows="10" placeholder="Текст сообщения" class="form-control"></textarea>
</div>
<div class="form-group">
    <button type="submit" id="action" data-action="sms">Отправить</button>
</div>
    {var $script = "
        <script>
        $('#action').on('click', function (e) {
        e.preventDefault();
        var action = 'sms';
        $.post('ajax.php', {
            action: action,
            phone: $('#phone').val(),
            text: $('#text').val()
        }, function (data) {
            alert('Статус сообщения: '+JSON.stringify(data));
        });
    });
    </script>"
}
{$script|jsToBottom:true}
