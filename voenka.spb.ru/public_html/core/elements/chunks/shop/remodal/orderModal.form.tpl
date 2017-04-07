<div class="remodal" data-remodal-id="orderModal" id="orderModal">
  <button data-remodal-action="close" class="remodal-close"></button>
  <h2 class="modalTitle">Оформить заказ</h2>
  <form action="{$_modx->resource.id|url}" method="POST" class="ajax_form">
      <div class="form-group tocart">
          <input type="text" class="form-control" name="name" placeholder="Ваше имя">
          <input type="text" class="form-control" name="email" placeholder="Контактный телефон или e-mail">
          <input type="text" class="form-control" disabled="disabled" name="product" value="">
          <input type="hidden" class="form-control" name="productHidden" value="">
          <input type="text" name="tushenka" value="" class="tushenka">
          <textarea name="comment" class="form-control" id="comment" cols="30" rows="10" placeholder="Дополнительный вопрос или комментарий"></textarea>
          <button type="submit">Оформить заказ</button>
      </div>
  </form>
</div>