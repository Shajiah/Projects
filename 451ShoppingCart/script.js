/*
	Live error checking to make sure the price and quantity isn't 0 or negative
*/

$(document).ready(function() {
	
	$("#price").on('input', function() {

		var input=$(this);
		if (input.val() > 0)
		{
			$("#priceError").removeClass("error").addClass("valid");	
		}
		else
		{
			$("#priceError").removeClass("valid").addClass("error");
		}

	});

	$("#quantity").on('input', function() {

		var input=$(this);
		if (input.val() >= 1)
		{
			$("#quantityError").removeClass("error").addClass("valid");	
		}
		else
		{
			$("#quantityError").removeClass("valid").addClass("error");
		}

	});

	
});



var viewModel = {
	newItemName: ko.observable(),
	newItemPrice: ko.observable(1),
	newItemQuantity: ko.observable(1),
	// removeButton: ko.observable('Remove'),
	itemsInCart: ko.observableArray([]),

	addNewItem: function () {
		var newItem = {
			name: this.newItemName(),
			price: this.newItemPrice(),
			quantity: this.newItemQuantity(),
			total: (this.newItemPrice() * this.newItemQuantity()),
			// button: this.removeButton()
			/*
			subtotal: function() {
				var subtotal = 0;
				for(var i = 0; i < this.itemsInCart().length; i++)
					{
						subtotal +=  this.itemsInCart()[i].total;
						alert("the subtotal is " + subtotal);
					}
				return subtotal;	
			},
			*/
		};

		/*Alphabatize list*/
		this.itemsInCart().sort();
		this.itemsInCart.push(newItem);

		// alert("The length of the array is " + this.itemsInCart().length);
		// for (var i = 0; i < this.itemsInCart().length; i++) {
		// 	var newButton = document.createElement("button");
		// 	$(this.itemsInCart()[i]).append("<button>Remove!</button>");
		// 	// appendHTML = "";
		// 	// appendHTML += "<td> <button>REMOVE</button> </td>";
		// 	// appendHTML.appendTo("#cart");
		// };
		this.newItemName("");
		this.newItemPrice(1);
		this.newItemQuantity(1);
		// $(".row").append("<button>Remove!</button>");	
	},

	// this.removeItem = function(item) { this.itemsInCart.remove(item) },
	removeNewItem: function() {
		// alert("it worked");
		// var removeItem = {
		// 	name: this.newItemName(),
		// 	price: this.newItemPrice(),
		// 	quantity: this.newItemQuantity()
		// };

		// this.itemsInCart.remove(this);
		this.itemsInCart.pop();
	}
};

//after you click the "Add Item" button
viewModel.addNewItemEnabled = ko.pureComputed(function() {
	var name = this.newItemName(),
		price = this.newItemPrice(),
		quantity = this.newItemQuantity();
		// alert("the cart length is " + this.itemsInCart().length); 
		// 	var subtotal = 0;
		// for(var i = 0; i < this.itemsInCart().length; i++)
		// 	{
		// 		subtotal +=  this.itemsInCart()[i].total;
		// 		// alert("the subtotal is " + subtotal);
		// 	}
	return name && name.length;
}, viewModel);

 viewModel.grandTotal = ko.pureComputed(function() {
        var total = 0;
        ko.utils.arrayForEach(this.itemsInCart(), function(item) {
            total += item.price();
        });
        return total;
    }, viewModel);

ko.applyBindings(viewModel);