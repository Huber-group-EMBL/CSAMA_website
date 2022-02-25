+++
title = "Registration"
description = "Registration"
+++

## Register interest

<!--<form method="post" action="https://formspree.io/your@email.com">-->
<form name="register" netlify>
  <div class="row">
    <div class="col-sm-6">
        <div class="form-group">
            <label for="name">First Name(s)</label>
            <input type="text" class="form-control" name="name" id="name" required="">
        </div>
    </div>
    <div class="col-sm-6">
        <div class="form-group">
            <label for="surname">Surname(s)</label>
            <input type="text" class="form-control" name="surname" id="surname" required="">
        </div>
    </div>
    <div class="col-sm-12">
      <div class="form-group">
        <label for="email">Your Email</label>
        <input type="text" class="form-control" name="email" id="email" required="">
      </div>
    </div>
    <div class="col-sm-12 text-center">
      <button type="submit" class="btn btn-template-main"><i class="far fa-envelope"></i>Register</button>
    </div>
  </div>
</form>

