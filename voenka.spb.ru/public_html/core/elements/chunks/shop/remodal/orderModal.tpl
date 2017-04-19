{$_modx->runSnippet('!AjaxForm',[
    'snippet' => 'FormIt',
    'hooks' => 'spam,email,clientMail,FormItSaveForm',
    'emailSubject' => 'Заказ товара',
    'emailTo' => $_modx->config.orderMail,
    'emailFrom' => $_modx->config.siteEmail,
    'emailFromName' => 'Сайт Voenka.spb.ru',
    'emailTpl' => 'orderModal.email.tpl',
    'validate' => 'email:required:minLength=`5`,tushenka:blank',
    'validationErrorMessage' => '<h5>В форме содержатся ошибки!</h5>',
    'successMessage' => '<h5>Сообщение успешно отправлено. <br> Мы свяжемся в самое ближайшее время!</h5>',
    'form' => '@FILE:chunks/shop/remodal/orderModal.form.tpl'
])}