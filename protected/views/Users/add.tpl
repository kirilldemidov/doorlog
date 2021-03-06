{extends "protected/views/index.tpl"}
    {block name="pagetitle"}<h1>Добавить пользователя</h1>{/block}

    {block name="content"}
  <script>
  $(function() {
    $( "#datepicker" ).datepicker({
      changeMonth: true,
      changeYear: true,
      yearRange: "1930:",
      dateFormat: 'yy-mm-dd'
    });
  });
  </script>
        <div class="users">
            <form method="POST">

                <p>Выберите пользователя:</p>
                <select name="userId">
                    {html_options options=$users}
                </select> </br>

                <p>Выберите отдел:</p>
                <select name="department">
                    <option value=0></option>
                    {html_options options=$departments }
                </select> </br>

                <p>Выберите должность:</p>
                <select name="position">
                    <option value=0</option>
                    {html_options options=$positions}
                </select> </br>

                <p>Укажите Email:</p> <input type="text" maxlength="45" size="40" name="email"></p>

                <p>Укажите Телефон:</p> <input type="text" maxlength="11" name="tel"></p>

                <p>Дата рождения:</p><input name="bday" id="datepicker" type="text" placeholder="ГГГГ.ММ.ДД" /></p>

                <input type=submit class="btn" value="Добавить">
            </form>

        </div>
    {/block}
{/extends}
