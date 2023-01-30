+++
title = "Registration"
description = "Registration"
+++

## Course fees

{{< feeTable >}}

The course fees include participation in the lectures, the computer tutorials and all other course events: coffee breaks, buffet lunch (Monday to Friday), Wednesday’s social programme and dinner, course material.

Places are awarded on a first-come, first-served basis. In previous years the course was sold out. We aim to finalize registration by 19th May 2022.

In order to register, each participant needs to fill in the form below and complete the payment. Please include your contact email and name.

### Before paying:

If you are unsure about which category you belong to, if you need to pay by money transfer, if you have special requirements for you invoice, or for any other reason, please contact us at info[at]bioconductor.eu.

If you are unsure about the VAT, please check the “[Should I pay the VAT](#VAT)” section below or ask us at info[at]bioconductor.eu.

**NOTE:** If you pay from your personal bank account you must pay the 22% additional VAT. If your institution is European and pays directly through PayPal or money transfer the registration is VAT exempt. For other information about VAT please go the “[Should I pay the VAT](#VAT)” section.

Italian participants payed by Italian institutions (PA) or private companies, should ask for the “fattura elettronica” unless they pay on a personal basis.

If you are uncertain about the payment, please contact us at info[at]bioconductor.eu and we will guide you through registration.

### Cancellation and Refund policy:

Cancellation of registration must be submitted in writing or via email and is valid only with acknowledgement of receipt.

Cancellation fees are dependent on the notice given:

If cancellation occurs less than 14 days prior to the start of the event, the cancellation fee is 100% of the registration fee. If cancellation occurs between 14 days and 1 month prior to the start of the event, the cancellation fee is 50% of the registration fee. Earlier than 1 month, a cancellation fee of EUR 70 will be charged. If payment has been made by the payment deadline of the event and a visa is not awarded in time to travel to the event, the full registration fee will be reimbursed. Evidence about the visa application will be requested. All applicable refunds will be issued following the close of the event. A refund will be returned via bank transfer. 

Speakers and programme agenda are subject to change.

## Register interest

**CSAMA 2023 is now fully booked and general registration is closed.**  <!--A small number of stipends (see below) are still available.  Please email us at info[at]bioconductor.eu if you would like to apply for a stipend.-->


<div class="container">
<form name="register" 
      method="post" 
      target="_top" 
      action="/registration-success/" 
      data-netlify="true">
  <div class="row">
    <div class="col-sm-1">
        <input id="output-email-subject" type="hidden" name="subject" value="">
        <div class="form-group">
            <label for="title">Title</label>
            <input type="text" class="form-control" name="title" id="title">
        </div>
    </div>
    <div class="col-sm-5">
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
  </div>
  <div class="row">
    <div class="col-sm-6">
      <div class="form-group">
        <label for="position">Career Stage / Position</label>
        <select class="form-control" name="position" id="position">
        <option hidden disabled selected value> -- select an option -- </option>
        <option>Undergraduate or Masters Student</option>
        <option>Postgraduate / Predoc Student</option>
        <option>Postdoc</option>
        <option>Staff Scientist</option>
        <option>Medical Doctor</option>
        <option>Principle Investigator</option>
        <option>Other</option>
        </select>
      </div>
    </div>
    <div class="col-sm-6">
      <div class="form-group">
        <label for="affiliation">Affiliation or Organisation</label>
        <input type="text" class="form-control" name="affiliation" id="affiliation" required="">
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12">
      <div class="form-group">
        <label for="address">Postal Address (for the invoice - include at least street, city, zip code, & country)</label>
        <input type="text" class="form-control" name="address" id="address" required="">
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-6">
      <div class="form-group">
        <label for="email">Email Address</label>
        <input type="email" class="form-control" name="email" id="email" oninput="updateSubject(this.value)" required="">
      </div>
    </div>
    <div class="col-sm-6">
      <div class="form-group">
        <label for="phone">Telephone Number (not required)</label>
        <input type="text" class="form-control" name="phone" id="phone">
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-lg-4 col-md-6">
      <div class="form-group">
        <label for="diet">Dietary Requirements<br/>(leave blank if none)</label>
        <input type="text" class="form-control" name="diet" id="diet">
      </div>
    </div>
    <div class="col-lg-4 col-md-6">
      <div class="form-group">
        <label for="vat">VAT Number<br/>(only if you need this on the invoice)</label>
        <input type="text" class="form-control" name="vat" id="vat">
      </div>
    </div>
    <div class="col-lg-4 col-md-6">
      <div class="form-group">
        <label for="pay-bank-transfer">Pay by bank transfer rather than PayPal<br/>(we will send you an invoice with the bank details)</label>
        <input type="checkbox" class="form-control" id="pay-bank-transfer" name="pay-bank-transfer">
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 text-center">
      <button type="submit" class="btn btn-template-main"><i class="far fa-envelope"></i>Submit Registration</button>
    </div>

</form>
</div>


<!--
### Stipends for scientists displaced by war

We are grateful to be able to provide a limited number of travel and registration stipends for displaced scientists. Criteria are: displacement from home or workplace due to a war event in the last year, and previous engagement with biostatistics, statistical computing or biological data science, typically evidenced by a degree or job position. Applications satisfying the criteria will be awarded on a first-come-first-serve basis, based on available funding. We will book for you (or if we agree in advance, reimburse) train travel within Europe, accommodation during the course, and registration fee. Please email your CV, a motivation paragraph describing your engagement in this area of science, and a brief summary of your circumstances, to info[at]bioconductor.eu. All information will be treated confidentially.
-->

{{% should-i-pay-vat %}}
