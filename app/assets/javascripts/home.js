window.onload = function() {
  var startPos;
  var geoSuccess = function(position) {
    startPos = position;
    document.getElementById('startLat').innerHTML = startPos.coords.latitude;
    document.getElementById('startLon').innerHTML = startPos.coords.longitude;

    $.ajax(
      '/home/weather', {
        method: 'post',
        data: {
          lat: startPos.coords.latitude,
          lon: startPos.coords.longitude
        },
        success: function(myResponse){
          console.log(myResponse)
          $('#showeather').html(myResponse);
        }
      }
    );
  };
  navigator.geolocation.getCurrentPosition(geoSuccess);

};

$('.hide').hide();
