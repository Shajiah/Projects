var buildings = [
                        {
                                        "image": "armory.jpg",
                                        "name": "Armory Hall",
                                        "latitude": 44.977276,
                                        "longitude":  -93.232266,
                                        "architect": "Charles Aldrich",
                                        "year": 1896,
                                        "description": "Built for athletics and military drill, as well as performing arts and social activities. Memorial plaques at the front entrance honor students, faculty, and alumni who fought in the Spanish-American War.",
                                        "markerIMG": "icon.png"
                        },

                        {
                                        "image": "eddy.jpg",
                                        "name": "Eddy Hall",
                                        "latitude": 44.977679, 
                                        "longitude": -93.236707,
                                        "architect":  "LeRoy Buffington",
                                        "year": 1886,
                                        "description": "Built as Mechanic Arts. It is the oldest existing building on campus. Named for Henry Turner Eddy, professor of engineering and mathematics and dean of the Graduate School.",
                                        "markerIMG": "icon.png"
                        },

                        {
                                        "image": "folwell.jpg",
                                        "name": "Folwell Hall",
                                        "latitude": 44.978354,
                                        "longitude": -93.234409,
                                        "architect": "Clarence H. Johnston, Sr.",
                                        "year": 1907,
                                        "description": "When Old Main burned in 1904, Folwell Hall was built to house displaced departments. Named for William Watts Folwell, first president of the University, 1869-84. ",
                                        "markerIMG": "icon.png"
                        },

                        {
                                        "image": "jones.jpg",
                                        "name": "Jones Hall",
                                        "latitude":44.977995, 
                                        "longitude":-93.235415,
                                        "architect": "Charles Aldrich",
                                        "year": 1901,
                                        "description": "Built as Physics Building. Named for Frederick S. Jones, professor of physics and dean of the College of Engineering.",
                                        "markerIMG": "icon.png"

                        },

                        {
                                        "image": "music.jpg",
                                        "name": "Music Education",
                                        "latitude": 44.971201,
                                        "longitude": -93.241777,
                                        "architect": "Warren H. Hayes",
                                        "year": 1888,
                                        "description": "Built as Student Christian Association building. Acquired by the University, it housed Child Welfare and Music Education.",
                                        "markerIMG": "icon.png"

                        },

                        {
                                        "image": "nicholson.jpg",
                                        "name": "Nicholson Hall",
                                        "latitude": 44.977197,
                                        "longitude": -93.235973,
                                        "architect": "'LeRoy Buffington with Harvey Ellis'",
                                        "year": 1890,
                                        "description": "'Built as chemical laboratory. In 1914, chemistry moved to the mall area and Nicholson was remodeled for the mens union until Coffman Memorial Union was built as a coed student union. Named for Edward E. Nicholson, professor of chemistry and later dean of Student Affairs. '",
                                        "markerIMG": "icon.png"
                        },

                        {
                                        "image": "pillsbury.jpg",
                                        "name": "Pillsbury Hall",
                                        "latitude":44.977018,
                                        "longitude": -93.234444,
                                        "architect": 'Leroy Buffington with Harvey Ellis',
                                        "year": 1889,
                                        "description": 'Built as Science Hall. Named for Governor John S. Pillsbury.',
                                        "markerIMG": "icon.png"
                        },

                        {
                                        "image": "statue.jpg",
                                        "name": "Pillsbury Statue",
                                        "latitude":44.978239, 
                                        "longitude":-93.236964,
                                        "architect": "Daniel C. French, sculptor",
                                        "year": 1900,
                                        "description": "Pillsbury statue located across the street from Burton Hall.",
                                        "markerIMG": "icon.png"
                        },

                        {
                                        "image": "wesbrook.jpg",
                                        "name": "Wesbrook Hall",
                                        "latitude": 44.976662,
                                        "longitude": -93.236310,
                                        "architect": "Frederick Corser",
                                        "year": 1898,
                                        "description": "Built as Laboratory of Medical Science. In 1912, dentistry moved here. Named for Frank Wesbrook, professor of pathology and bacteriology and dean of the College of Medicine and Surgery. ",
                                        "markerIMG": "icon.png"
                        },

                        {
                                        "image": "wulling.jpg",
                                        "name": "Wulling Hall",
                                        "latitude": 44.976306, 
                                        "longitude": -93.237437, 
                                        "architect": "Allen Stem and Charles Reed",
                                        "year": 1892,
                                        "description": "Built as Medical Hall; named Millard Hall in 1906. Fire damaged the building. It later became the site for the pharmacy building. Named for Frederick J. Wulling, first dean and founder of the College of Pharmacy.",
                                        "markerIMG": "icon.png"
                        }
                ];

                var markers = [];
                var buildingLatLng; 
                // var markerlocation;
                function initMap() 
                {
                        

                          // Create a map object and specify the DOM element for display.
                        var map = new google.maps.Map(document.getElementById('map'), {
                            center: {lat: 44.977995, lng: -93.235415},
                            scrollwheel: false,
                            zoom: 16
                          });
                        var directionsService = new google.maps.DirectionsService;
                        var directionsDisplay = new google.maps.DirectionsRenderer;
                        
                          directionsDisplay.setMap(map);

                          // var onChangeHandler = function() {
                          //   calculateAndDisplayRoute(directionsService, directionsDisplay);
                          // };
                          // document.getElementById('start').addEventListener('change', onChangeHandler);
                          // document.getElementById('end').addEventListener('change', onChangeHandler);


                        var myImg = "icon.png";

                
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

