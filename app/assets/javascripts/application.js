// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require jquery.geocomplete



$(function() {
  $("#geo-input").geocomplete({
    map: '#map'
  });
});


// $(function() {
// $("#geo-input").geocomplete(
//   {
//     map: ".map_canvas",
//     details: "form ",
//     markerOptions: {
//       draggable: true
//     }
//   );
// });




// function initMap() {
//   var myLatLng = {lat: 40.740112, lng: -73.990071};
//
//   var map = new google.maps.Map(document.getElementById('map'), {
//     zoom: 15,
//     center: myLatLng
//   });
//
//   var marker = new google.maps.Marker({
//     position: myLatLng,
//     map: map,
//     title: 'Hello World!'
//   });
// }


// function initMap() {
//
//
//
//
//   var myLatLng = {lat: 40.740112, lng: -73.990071};
//
//   var map = new google.maps.Map(document.getElementById('map'), {
//     zoom: 15,
//     center: myLatLng
//   });
//
//   var marker = new google.maps.Marker({
//     position: myLatLng,
//     map: map,
//     icon: 'http://cdn.niketalk.com/2/29/50x50px-ZC-29425799_MeeseeksIcon.png',
//     title: 'Hello World!'
//   });




  // $("#geo-input").geocomplete(
  //   {
  //     map: new google.maps.Map(document.getElementById('map'), {
  //       zoom: 15,
  //       center: {lat: 40.740112, lng: -73.990071}
  //     }),
  //     details: "form ",
  //     markerOptions: {
  //       draggable: true
  //     }
  //   );



// }
