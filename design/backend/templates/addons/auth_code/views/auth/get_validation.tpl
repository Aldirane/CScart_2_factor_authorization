
<div class="modal signin-modal">
    <form action="{""|fn_url}" method="post" name="main_login_form" class="signin-modal__form cm-skip-check-items cm-check-changes">
        <input type="hidden" name="return_url" value="{$smarty.request.return_url|fn_url:"A":"rel"|fn_query_remove:"return_url"}">
        <div class="modal-header">
            <h4 class="signin-modal__form-header">{__("administration_panel")}</h4>
        </div>
        <div class="modal-body">
            <div class="control-group">
            <label for="login_{$id}" class="ty-control-group__label">{__("code")}</label>
            <input type="text" id="login_{$id}" name="code" size="30"/>
            </div>
            <div class="control-group">
                <div class="ty-float-right">
                    {include file="buttons/sign_in.tpl" but_name="dispatch[auth.get_validation]" but_role="submit"}
                </div>
                <div class="ty-float-left">
                    <a class="ty-btn__primary ty-btn" href={"auth.get_validation"|fn_url}>{__("send_new_code")}</a>
                </div>
            </div>
        </div>
    </form>
</div>

