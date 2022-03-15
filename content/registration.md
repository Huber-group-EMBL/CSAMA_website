+++
title = "Registration"
description = "Registration"
+++

## Course fees

{{< feeTable >}}

The course fees include participation in the lectures, the computer tutorials and all other course events: coffee breaks, buffet lunch (Monday to Friday), Wednesday’s social programme and dinner, course material.

Places are awarded on a first-come, first-served basis. In previous years the course was sold out. We aim to finalize registration by 19 May 2022.

In order to register, each participant needs to fill in the form below and complete the payment. Please include your contact email and name. 

### Before paying:

If you are unsure about which category you belong to, if you need to pay by money transfer, if you have special requirements for you invoice, or for any other reason, please contact us at simone.bell(at)embl.de.

### Cancellation and Refund policy:

Cancellation of registration must be submitted in writing or via email and is valid only with acknowledgement of receipt.

Cancellation fees are dependent on the notice given:

If cancellation occurs less than 14 days prior to the start of the event, the cancellation fee is 100% of the registration fee. If cancellation occurs between 14 days and 1 month prior to the start of the event, the cancellation fee is 50% of the registration fee. Earlier than 1 month, a cancellation fee of EUR 70 will be charged. If payment has been made by the payment deadline of the event and a visa is not awarded in time to travel to the event, the full registration fee will be reimbursed. Evidence about the visa application will be requested. All applicable refunds will be issued following the close of the event. A refund will be returned via bank transfer. 

Speakers and programme agenda are subject to change.

## Register interest

<form name="register" 
      method="post" 
      target="_top" 
      action="/payment/" 
      data-netlify="true">
  <div class="row">
    <div class="col-sm-offset-1 col-sm-1">
        <div class="form-group">
            <label for="title">Title</label>
            <input type="text" class="form-control" name="title" id="title">
        </div>
    </div>
    <div class="col-sm-4">
        <div class="form-group">
            <label for="name">First Name(s)</label>
            <input type="text" class="form-control" name="name" id="name" required="">
        </div>
    </div>
    <div class="col-sm-5">
        <div class="form-group">
            <label for="surname">Surname(s)</label>
            <input type="text" class="form-control" name="surname" id="surname" required="">
        </div>
    </div>
    <div class="col-sm-offset-1 col-sm-5">
      <div class="form-group">
        <label for="position">Career Stage / Position</label>
        <select class="form-control" name="position" id="position">
        <option>Undergraduate Student</option>
        <option>Postgraduate Student</option>
        <option>Postdoc</option>
        <option>Staff Scientist</option>
        <option>Medical Doctor</option>
        <option>Principle Investigator</option>
        <option>Other</option>
        </select>
      </div>
    </div>
    <div class="col-sm-5">
      <div class="form-group">
        <label for="affiliation">Affiliation or Organisation</label>
        <input type="text" class="form-control" name="affiliation" id="affiliation" required="">
      </div>
    </div>
    <div class="col-sm-offset-1 col-sm-10">
      <div class="form-group">
        <label for="address">Postal Address</label>
        <input type="text" class="form-control" name="address" id="address" required="">
      </div>
    </div>
    <div class="col-sm-offset-1 col-sm-5">
      <div class="form-group">
        <label for="email">Email Address</label>
        <input type="text" class="form-control" name="email" id="email" required="">
      </div>
    </div>
    <div class="col-sm-5">
      <div class="form-group">
        <label for="phone">Telephone Number (not required)</label>
        <input type="text" class="form-control" name="phone" id="phone">
      </div>
    </div>
    <div class="col-sm-offset-1 col-sm-5">
      <div class="form-group">
        <label for="diet">Dietary Requirements (leave blank if none)</label>
        <input type="text" class="form-control" name="diet" id="diet">
      </div>
    </div>
    <div class="col-sm-5">
      <div class="form-group">
        <label for="vat">VAT Number (only required if you need this on the invoice)</label>
        <input type="text" class="form-control" name="vat" id="vat">
      </div>
    </div>
    <div class="col-sm-12 text-center">
      <button type="submit" class="btn btn-template-main"><i class="far fa-envelope"></i>Submit Registration</button>
    </div>
</form>

