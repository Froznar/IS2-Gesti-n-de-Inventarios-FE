/*
$(document).ready(function(){
	var ctx = $("#mycanvas").get(0).getContext("2d");

	var data = [
		{
			value: 270,
			color: "cornflowerblue",
			highlight: "lightskyblue",
			label: "JavaScript"
		},
		{
			value: 50,
			color: "lightgreen",
			highlight: "yellowgreen",
			label: "HTML"
		},
		{
			value: 40,
			color: "orange",
			highlight: "darkorange",
			label: "CSS"
		}
	];

	var chart = new Chart(ctx).Doughnut(data);
});*/


$(document).ready(function(){
	var datos = {
		type: "pie",
		data : {
			datasets :[{
				data : [
					5,
					10,
					40,
					12,
					23,
				],
				backgroundColor: [
					"#F7464A",
					"#46BFBD",
					"#FDB45C",
					"#949FB1",
					"#4D5360",
				],
			}],
			labels : [
				"Datos 1",
				"Datos 2",
				"Datos 3",
				"Datos 4",
				"Datos 5",
			]
		},
		options : {
			responsive : true,
		}
	};

	var canvas = document.getElementById('chart').getContext('2d');
	window.pie = new Chart(canvas, datos);

	setInterval(function(){
		datos.data.datasets.splice(0);
		var newData = {
			backgroundColor : [
				"#F7464A",
				"#46BFBD",
				"#FDB45C",
				"#949FB1",
				"#4D5360",
			],
			data : [getRandom(), getRandom(), getRandom(), getRandom(), getRandom()]
		};

		datos.data.datasets.push(newData);

		window.pie.update();

	}, 5000);



	function getRandom(){
		return Math.round(Math.random() * 100);
	}


});