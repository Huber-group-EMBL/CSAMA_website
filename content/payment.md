+++
title = "Payment"
+++

Thank you for your registration.  Your place in the summer school is only confirmed once the payment has been made.  You can do this either via the Paypal "Add to cart" button below or via bank transfer.

Please ensure that you provide the name of the person attending CSAMA in the box below.  This will allow us to match payments and registrations, even if the payment is performed under another name or using an institutional account.  Then select the type of registration you require from the dropdown list.  As a reminder the categories of registration are listed below.  If you are unsure about the VAT, please ask us at **info[at]bioconductor.eu**.

On the payment page please choose the yellow "PayPal check out" button even if you do not have a PayPal account.  You will be able to pay directly with a credit card on the next page.

If you are paying for multiple participants you can add each of them to the basket separately and then proceed with a single payment.

---

{{< feeTable >}}
<!--
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="32AA6XBGPYYTS">
<input type="hidden" name="shopping_url" value="https://csama2023.bioconductor.eu/payment/"> 
<table>
<tr><td><input type="hidden" name="on0" value="Registration fees">Registration fees</td></tr><tr><td>
  <select class="form-control" name="os0">
	<option value="STU No VAT">STU No VAT €850,00 EUR</option>
	<option value="STU Plus VAT 22%">STU Plus VAT 22% €1.037,00 EUR</option>
	<option value="ACA no VAT">ACA no VAT €1.150,00 EUR</option>
	<option value="ACA plus VAT 22%">ACA plus VAT 22% €1.403,00 EUR</option>
	<option value="COM no VAT">COM no VAT €2.000,00 EUR</option>
	<option value="COM plus VAT 22%">COM plus VAT 22% €2.440,00 EUR</option>
</select> </td></tr>
<tr>
  <td>
    <input type="hidden" name="on1" value="Participant Name and Last Name">Participant Name and Last Name
  </td>
</tr>
<tr>
  <td>
    <input class="form-control" type="text" name="os1" maxlength="200" required="">
  </td>
</tr>
<tr>
  <td>
    <input type="hidden" name="on2" value="Contact email">Contact email
  </td>
</tr>
<tr>
  <td>
    <input class="form-control" type="text" name="os2" maxlength="200" required="">
  </td>
</tr>
</table>
<input type="hidden" name="currency_code" value="EUR">
<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
</form> -->

---

<div id="smart-button-container">
      <div style="text-align: center;">
        <div style="margin-bottom: 1.25rem;">
          <p>CSAMA Summer School 2023 Registration Fees</p>
          <select id="item-options"><option value="Student" price="960.00">Student - 960.00 EUR</option><option value="Academia/non-profit" price="1300.00">Academia/non-profit - 1300.00 EUR</option><option value="Industry" price="2250.00">Industry - 2250.00 EUR</option></select>
          <select style="visibility: hidden" id="quantitySelect"><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option></select>
        </div>
      <div id="paypal-button-container"></div>
      </div>
    </div>
    <script src="https://www.paypal.com/sdk/js?client-id=sb&enable-funding=venmo&currency=EUR" data-sdk-integration-source="button-factory"></script>
    <script>
      function initPayPalButton() {
        var shipping = 0;
        var itemOptions = document.querySelector("#smart-button-container #item-options");
    var quantity = parseInt(5);
    var quantitySelect = document.querySelector("#smart-button-container #quantitySelect");
    if (!isNaN(quantity)) {
      quantitySelect.style.visibility = "visible";
    }
    var orderDescription = 'CSAMA Summer School 2023 Registration Fees';
    if(orderDescription === '') {
      orderDescription = 'Item';
    }
    paypal.Buttons({
      style: {
        shape: 'rect',
        color: 'gold',
        layout: 'vertical',
        label: 'checkout',
      },
      createOrder: function(data, actions) {
        var selectedItemDescription = itemOptions.options[itemOptions.selectedIndex].value;
        var selectedItemPrice = parseFloat(itemOptions.options[itemOptions.selectedIndex].getAttribute("price"));
        var tax = (0 === 0 || false) ? 0 : (selectedItemPrice * (parseFloat(0)/100));
        if(quantitySelect.options.length > 0) {
          quantity = parseInt(quantitySelect.options[quantitySelect.selectedIndex].value);
        } else {
          quantity = 1;
        }
        tax *= quantity;
        tax = Math.round(tax * 100) / 100;
        var priceTotal = quantity * selectedItemPrice + parseFloat(shipping) + tax;
        priceTotal = Math.round(priceTotal * 100) / 100;
        var itemTotalValue = Math.round((selectedItemPrice * quantity) * 100) / 100;
        return actions.order.create({
          purchase_units: [{
            description: orderDescription,
            amount: {
              currency_code: 'EUR',
              value: priceTotal,
              breakdown: {
                item_total: {
                  currency_code: 'EUR',
                  value: itemTotalValue,
                },
                shipping: {
                  currency_code: 'EUR',
                  value: shipping,
                },
                tax_total: {
                  currency_code: 'EUR',
                  value: tax,
                }
              }
            },
            items: [{
              name: selectedItemDescription,
              unit_amount: {
                currency_code: 'EUR',
                value: selectedItemPrice,
              },
              quantity: quantity
            }]
          }]
        });
      },
      onApprove: function(data, actions) {
        return actions.order.capture().then(function(orderData) {
          // Full available details
          console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));
          // Show a success message within this page, e.g.
          const element = document.getElementById('paypal-button-container');
          element.innerHTML = '';
          element.innerHTML = '<h3>Thank you for your payment!</h3>';
          // Or go to another URL:  actions.redirect('thank_you.html');
        });
      },
      onError: function(err) {
        console.log(err);
      },
    }).render('#paypal-button-container');
  }
  initPayPalButton();
    </script>

