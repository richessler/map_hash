/*
* @Author: Richard Hessler
* @Date:   2014-07-03 15:57:13
* @Last Modified by:   Richard Hessler
* @Last Modified time: 2014-07-24 02:36:48
*/

// /////////////////////////////////////////
//
//    AJAX Call to DB - keeping if we revisit
//
// /////////////////////////////////////////
//
//
// var response;
// $(document).ready(function() {
//   $.ajax({
//           type: "GET",
//           dataType: "json",
//           url: "/tweets",
//           success: function(data){
//             response = data;
//           }
//   }).then(function() {
//     d3.json(response, function(error, data) {
//       g.insert("circle", ".graticule")
//          .data(data)
//          .attr("cx", function(d) {
//                  return projection([d.lon, d.lat])[0];
//          })
//          .attr("cy", function(d) {
//                  return projection([d.lon, d.lat])[1];
//          })
//          .attr("r", 4)
//          .style("fill", "4099FF");
//  });
// });
//   });
