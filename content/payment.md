+++
title = "Payment"
+++

Thank you for your registration.  Your place on the course is only confirmed once the payment has been made.  

Please ensure that you provide the name of the person attending the course in the box below.  This will allow us to match payments and registrations, even if the payment is performed under another name or using an institutional account.

Then select the type of registration you require from the options below.

<div id="smart-button-container">
      <div style="text-align: center;">
        <div style="margin-bottom: 1.25rem;">
          <p></p>
          <div class="form-group-paypal">
          <label for="name">Name of course attendee</label>
          <input type="text" class="form-control" name="name" id="name" required=""><p></p>
          </div>
          <div class="form-group-paypal">
          <label for="item-options">Registration Type</label>
          <select id="item-options" class="form-control">
            <option value="Junior Researcher" price="1">Junior Researcher - 1 EUR</option>
            <option value="Academic / Non-Profit" price="5">Academic / Non-profit - 5 EUR</option>
            <option value="Commercial" price="10">Commercial - 10 EUR</option>
          </select>
          </div>
          <select style="visibility: hidden" id="quantitySelect"></select>
        </div>
      <div id="paypal-button-container"></div>
      </div>
    </div>
<script src="https://www.paypal.com/sdk/js?client-id=AdXfnDP1Kqq46-SFtnWTuSkgwC9T1TXN252zv0TEcCLOEWJ2WHOfyXLz3AS-lpjLRdqD5XW5H8A4ccEJ&enable-funding=venmo&currency=EUR" data-sdk-integration-source="button-factory"></script>
    
<script>
  function initPayPalButton() {
    var shipping = 0;
    var itemOptions = document.querySelector("#smart-button-container #item-options");
    var quantity = parseInt();
    var quantitySelect = document.querySelector("#smart-button-container #quantitySelect");
    var attendeeName = document.getElementById('name');
    if (!isNaN(quantity)) {
      quantitySelect.style.visibility = "visible";
    }
    var orderDescription = '';
    if(orderDescription === '') {
      orderDescription = 'CSAMA registration for ';
    }
    paypal.Buttons({
      style: {
        shape: 'rect',
        color: 'blue',
        layout: 'vertical',
        label: 'pay',
      },
      createOrder: function(data, actions) {
        var attendee = attendeeName.value;
            console.log(attendee);
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
            description: orderDescription + attendee,
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
          //element.innerHTML = '';
          //element.innerHTML = '<h3>Thank you for your payment!</h3>';
          // Or go to another URL:  actions.redirect('thank_you.html');
          actions.redirect('/success/');
        });
      },
      onError: function(err) {
        console.log(err);
      },
    }).render('#paypal-button-container');
  }
  initPayPalButton();
</script>
