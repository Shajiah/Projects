var buildings = [
                        {
                                        "image": "luce.jpg",
                                        "name": "Pizza Luce",
                                        "latitude": 44.981918,
                                        "longitude":  -93.273662,
                                        "architect": "Pizza",
                                        "year": 1896,
                                        "description": "Local pizzeria chain serving creative pies, pasta & hoagies, plus beer & wine, in a casual setting.",
                                        "markerIMG": "icon.png"
                        },

                        {
                                        "image": "112eatery.jpg",
                                        "name": "112 Eatery",
                                        "latitude": 44.982794, 
                                        "longitude": -93.271731,
                                        "architect": "Eclectic Restaurant",
                                        "year": 1886,
                                        "description": "Acclaimed spot offering an eclectic menu of elevated comfort fare for dinner & late-night dining.",
                                        "markerIMG": "icon.png"
                        },

                        {
                                        "image": "saffron.jpg",
                                        "name": "Saffron Restaurant & Lounge",
                                        "latitude": 44.982609, 
                                        "longitude": -93.272606,
                                        "architect": "Middle Eastern",
                                        "year": 1907,
                                        "description": "Contemporary Mediterranean haunt with stylish decor & clever cocktails, plus tapas & choice entrees.",
                                        "markerIMG": "icon.png"
                        },

                        {
                                        "image": "fogo.jpg",
                                        "name": "Fogo de Chao",
                                        "latitude": 44.978529, 
                                        "longitude": -93.273908,
                                        "architect": "Brazilian",
                                        "year": 1901,
                                        "description": "Upscale Brazilian chain for all-you-can-eat meat carved tableside plus an extensive salad bar",
                                        "markerIMG": "icon.png"

                        },

                        {
                                        "image": "union.jpg",
                                        "name": "UNION Restaurant",
                                        "latitude": 44.977330, 
                                        "longitude": -93.275367,
                                        "architect": "American Restaurant",
                                        "year": 1888,
                                        "description": "Popular modern eatery offers seafood, New American cuisine & cocktails, plus a rooftop atrium patio.",
                                        "markerIMG": "icon.png"

                        },

                        {
                                        "image": "huberts.jpg",
                                        "name": "Huberts Sports Bar & Grill",
                                        "latitude": 44.979835, 
                                        "longitude": -93.275592,
                                        "architect": "American Restaurant",
                                        "year": 1890,
                                        "description": "Watering hole with bar fare such as burgers, wings & pizza, plus lots of TVs & daily happy hour. ",
                                        "markerIMG": "icon.png"
                        },

                        {
                                        "image": "508bar.jpg",
                                        "name": "508 Bar and Restaurant",
                                        "latitude": 44.980427, 
                                        "longitude": -93.274004,
                                        "architect": 'American Restaurant',
                                        "year": 1889,
                                        "description": 'Lively 2-story bar & grill serves up cocktails & casual grub in a spacious, industrial-styled venue.',
                                        "markerIMG": "icon.png"
                        },

                        {
                                        "image": "seafood.jpg",
                                        "name": "The Oceanaire Seafood Room",
                                        "latitude": 44.978636, 
                                        "longitude":-93.271663,
                                        "architect": "Seafood",
                                        "year": 1900,
                                        "description": "High-end chain offering seafood, steaks & a deep wine list in sophisticated but lively environs.",
                                        "markerIMG": "icon.png"
                        },

                        {
                                        "image": "pourhouse.JPG",
                                        "name": "The Pourhouse",
                                        "latitude": 44.979851, 
                                        "longitude": -93.271712,
                                        "architect": "American Restaurant",
                                        "year": 1898,
                                        "description": "Sports bar & nightclub has happy hours & live music plus signature cocktails, craft beers & burgers ",
                                        "markerIMG": "icon.png"
                        },

                        {
                                        "image": "donghae.jpg",
                                        "name": "Dong Hae",
                                        "latitude": 44.982337, 
                                        "longitude": -93.270852, 
                                        "architect": "Korean",
                                        "year": 1892,
                                        "description": "Modern locale for Korean standards, all-you-can-eat sushi, Japanese entrees & industrial-chic decor.",
                                        "markerIMG": "icon.png"
                        }
                ];

                var markers = [];
                var buildingLatLng; 
                // var markerlocation;
                function initMap() 
                {
                        var myImg = "icon.png";
                        var four51 = "451.png";



                          // Create a map object and specify the DOM element for display.
                        var map = new google.maps.Map(document.getElementById('map'), {
                            center: {lat: 44.980427, lng: -93.274004},
                            scrollwheel: false,
                            zoom: 16
                          });
                        var directionsService = new google.maps.DirectionsService;
                        var directionsDisplay = new google.maps.DirectionsRenderer;
                        
                        var coverletter =  '<h1 class = "contentBox"> HAHAAHH </h1>' + '<br/>';

						var infowindow = new google.maps.InfoWindow({
                                        content: coverletter
                                        // alert("the content for this is " + contentString);
                                });                                        

                        var marker = new google.maps.Marker({
                                    position: {lat: 44.981432, lng: -93.273265},
                                    map: map,
                                    icon: four51,
                                    info: coverletter
                                  });

                        marker.addListener('click', function() {
                                    infowindow.setContent(this.info);
                                    infowindow.open(map, this);

                                  });
                          directionsDisplay.setMap(map);




                          // var onChangeHandler = function() {
                          //   calculateAndDisplayRoute(directionsService, directionsDisplay);
                          // };
                          // document.getElementById('start').addEventListener('change', onChangeHandler);
                          // document.getElementById('end').addEventListener('change', onChangeHandler);


                        

                
                        for(var i = 0; i < buildings.length; i++)
                        {
                                var myLatLng = {lat: buildings[i].latitude, lng: buildings[i].longitude};

                                var contentString = '<h1 class = "contentBox">' +  buildings[i].name + '</h1>' + '<br/>' +
                                        '<h3 class = "contentBox">' + buildings[i].architect + '</h3>' + '<br/>' +
                                        '<p class = "contentBox">' + buildings[i].description + '</p>' + '<br/>' + 
                                        '<div class = "contentBox"> <img  class = "contentBox" src = "' + buildings[i].image + '"/> </div>' ;
                                        // alert("the content for this is " + contentString);

                                var infowindow = new google.maps.InfoWindow({
                                        content: contentString
                                        // alert("the content for this is " + contentString);
                                });

                                var marker = new google.maps.Marker({
                                    position: myLatLng,
                                    map: map,
                                    icon: myImg,
                                    info: contentString
                                  });

                                marker.addListener('click', function() {
                                    infowindow.setContent(this.info);
                                    infowindow.open(map, this);

                                  });
                                
                        }

                        map.addListener('click', function(event) {
                            clearMarkers();
                            addMarker(event.latLng, map);
                            markerlocation = event.latLng;
                            // calculateAndDisplayRoute(directionsService, directionsDisplay);
                        });
                        
                }

                function addMarker(location, map) 
                {
                  var marker = new google.maps.Marker({
                    position: location,
                    map: map,
                    title: 'Location: ' + location.lat() + ' , ' + location.lng()
                  });

                    // var lat;
                    // var lng;
                  //Info window when click on the marker.
                    google.maps.event.addListener(marker, "click", function(e) {
                        var infoWindow = new google.maps.InfoWindow({
                            content: 'Hello'
                        });

                        // lat = e.latLng.lat().toFixed(7);
                        // lng = e.latLng.lng().toFixed(7);
                        infoWindow.open(map, marker);
                        // calculateAndDisplayRoute(directionsService, directionsDisplay);
                    });

                  markers.push(marker);
                }
                
                function clearMarkers() 
                {
                    for (var i = 0; i < markers.length; i++) 
                    {
                        markers[i].setMap(null);
                    }
                    

                    // alert("select for transportation "+transMode);
                    // alert("lat is "+newSelectBuilding[0] + "lng is " + newSelectBuilding[1]);
                }

                

                function calculateAndDisplayRoute(directionsService, directionsDisplay) {
                
                    var selectMode = document.getElementById('dropdown1');
                    var transMode = selectMode.options[selectMode.selectedIndex].value;

                    var selectBuilding = document.getElementById("dropdown2").value;
                    var newSelectBuilding = selectBuilding.split(',');

                    // window.alert(selectMode);
                    // window.alert(newSelectBuilding);
                      directionsService.route({
                        origin: location,
                        destination: {lat: newSelectBuilding[0], lng: newSelectBuilding[1]},
                        travelMode: google.maps.TravelMode[selectMode]
                      }, function(response, status) {
                        if (status === google.maps.DirectionsStatus.OK) {
                          directionsDisplay.setDirections(response);
                        } else {
                          window.alert('Directions request failed due to ' + status);
                        }
                      });
                }

                function selectOption()
                        {
                            if (document.getElementById("start").options.selectedIndex == 1)
                            {
                                // document.getElementById("Armory").innerHTML = buildings[i].architect;
                                buildingLatLng = {lat: buildings[0].longitude, lng: buildings[0].latitude};     
                                alert("buildings coordinats  are " + buildingLatLng.lat);

                            }
                            if (document.getElementById("start").options.selectedIndex == 2)
                            {
                                // document.getElementById("Eddy").innerHTML = buildings[i].year;
                                buildingLatLng = {lat: buildings[1].longitude, lng: buildings[1].latitude}; 
                            }
                            if (document.getElementById("start").options.selectedIndex == 3)
                            {
                                // document.getElementById("Folwell").innerHTML = buildings[i].description;
                                buildingLatLng = {lat: buildings[2].longitude, lng: buildings[2].latitude}; 
                            }
                            if (document.getElementById("start").options.selectedIndex == 4)
                            {
                                // document.getElementById("Jones").innerHTML = buildings[i].architect;
                                buildingLatLng = {lat: buildings[3].longitude, lng: buildings[3].latitude}; 
                            }
                            if (document.getElementById("start").options.selectedIndex == 5)
                            {
                                // document.getElementById("MusicEducation").innerHTML = buildings[i].year;
                                buildingLatLng = {lat: buildings[4].longitude, lng: buildings[4].latitude}; 
                            }
                            if (document.getElementById("start").options.selectedIndex == 6)
                            {
                                // document.getElementById("Nicholson").innerHTML = buildings[i].year;
                                buildingLatLng = {lat: buildings[5].longitude, lng: buildings[5].latitude}; 
                            }
                            if (document.getElementById("start").options.selectedIndex == 7)
                            {
                                // document.getElementById("Pillsbury").innerHTML = buildings[i].description;
                                buildingLatLng = {lat: buildings[6].longitude, lng: buildings[6].latitude}; 
                            }
                            if (document.getElementById("start").options.selectedIndex == 8)
                            {
                                // document.getElementById("PillsburyStatue").innerHTML = buildings[i].architect;
                                buildingLatLng = {lat: buildings[7].longitude, lng: buildings[7].latitude}; 
                            }
                            if (document.getElementById("start").options.selectedIndex == 9)
                            {
                                // document.getElementById("Wesbrook").innerHTML = buildings[i].year;
                                buildingLatLng = {lat: buildings[8].longitude, lng: buildings[8].latitude}; 
                            }
                            if (document.getElementById("start").options.selectedIndex == 10)
                            {
                                // document.getElementById("Wulling").innerHTML = buildings[i].description;
                                buildingLatLng = {lat: buildings[9].longitude, lng: buildings[9].latitude}; 
                            }
                            return buildingLatLng;
                            
                        }

