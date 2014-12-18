@{
    ViewBag.Title = "Login";
    Layout = "~/Views/Shared/_Layout.cshtml";
}

<div class="jumbotron" style="margin-top:15px">
    <h1>Log On</h1>
    <p>Please login to system.</p>
    <p>
        @using (Html.BeginForm("ExternalLogin", "Account", new { ReturnUrl = ViewBag.ReturnUrl }))
        {
            @Html.AntiForgeryToken()
            <button type="submit" class="btn btn-primary" id="Google" name="provider" value="Google" title="Signin with Google account">Signin with Google account</button>
        }
    </p>
</div>