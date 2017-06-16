var config = {
	type : 'line',
	data : {
		labels : [ "6/2017", "5/2017", "4/2017", "3/2017", "2/2017", "2/2017" ],
		datasets : [ {
			label : "New User",
			data : [ 12, 568, 685, 568, 256, 200 ],
			fill : false,
			backgroundColor : window.chartColors.seagreen,
			borderColor : window.chartColors.reagreen,
			borderWidth : 1
		},

		{
			label : "Write Book",
			data : [ 15, 253, 214, 201, 195, 102 ],
			fill : false,
			backgroundColor : window.chartColors.lavender,
			borderColor : window.chartColors.lavender,
			borderWidth : 1
		},

		{
			label : "Write Chapter",
			data : [ 180, 1500, 1360, 1256, 800, 475 ],
			fill : false,
			backgroundColor : window.chartColors.gray,
			borderColor : window.chartColors.gray,
			borderWidth : 1
		},

		{
			label : "Read",
			data : [ 4568, 3559442, 1456321, 1254789, 1489215, 1514785 ],
			fill : false,
			backgroundColor : window.chartColors.coral,
			borderColor : window.chartColors.coral,
			borderWidth : 1
		}, {
			label : "Like",
			data : [ 12, 4515, 145, 1246, 956, 1004 ],
			fill : false,
			backgroundColor : window.chartColors.oceanblue,
			borderColor : window.chartColors.red,
			borderWidth : 1
		},

		{
			label : "Exchange",
			data : [ 50, 658, 875, 680, 540, 350 ],
			fill : false,
			backgroundColor : window.chartColors.green,
			borderColor : window.chartColors.green,
			borderWidth : 1
		} ]
	},
	options : {
		scales : {
			yAxes : [ {
				ticks : {
					beginAtZero : true
				}
			} ]
		},
		responsive : true,
		title : {
			display : true,
			text : 'Thống kê 6 tháng'
		},
	}
};
window.onload = function() {
	var context = document.getElementById("chart_statistic").getContext("2d");
	window.myLine = new Chart(context, config);
};

var config_newuser = {
	type : 'line',
	data : {
		labels : [ "1/2017", "2/2017", "3/2017", "4/2017", "5/2017", "6/2017" ],
		datasets : {
			label : "New User",
			data : [ 200, 256, 568, 685, 568, 12 ],
			fill : false,
			borderColor : 'rgba(255, 159, 64, 1)',
			borderWidth : 1
		}
	},
	options : {
		responsive : true,
		title : {
			display : true,
			text : 'Thống kê số tài khoản mới trong 6 tháng'
		},
	}
};

var config_writebook = {
	type : 'line',
	data : {
		labels : [ "1/2017", "2/2017", "3/2017", "4/2017", "5/2017", "6/2017" ],
		datasets : {
			label : "Write Book",
			data : [ 102, 195, 201, 214, 253, 15 ],
			fill : false,
			borderColor : 'rgba(153, 102, 255, 1)',
			borderWidth : 1
		}
	}

	,
	options : {
		responsive : true,
		title : {
			display : true,
			text : 'Thống kê sách mới trong 6 tháng'
		},
	}
};

var config_writechapter = {
	type : 'line',
	data : {
		labels : [ "1/2017", "2/2017", "3/2017", "4/2017", "5/2017", "6/2017" ],
		datasets : {
			label : "Write Chapter",
			data : [ 475, 800, 1256, 1360, 1500, 180 ],
			fill : false,
			borderColor : 'rgba(45,196,150,1)',
			borderWidth : 1
		}
	}

	,
	options : {
		responsive : true,
		title : {
			display : true,
			text : 'Thống kê số chương mới viết trong 6 tháng'
		},
	}
};

var config_read = {
	type : 'line',
	data : {
		labels : [ "1/2017", "2/2017", "3/2017", "4/2017", "5/2017", "6/2017" ],
		datasets : {
			label : "Read",
			data : [ 1514785, 1489215, 1254789, 1456321, 3559442, 4568 ],
			fill : false,
			borderColor : 'rgba(255, 99, 132, 1)',
			borderWidth : 1
		}
	}

	,
	options : {
		responsive : true,
		title : {
			display : true,
			text : 'Thống kê lượt đọc trong 6 tháng'
		},
	}
};

var config_like = {
	type : 'line',
	data : {
		labels : [ "1/2017", "2/2017", "3/2017", "4/2017", "5/2017", "6/2017" ],
		datasets : {
			label : "Like",
			data : [ 1004, 956, 1246, 145, 4515, 12 ],
			fill : false,
			borderColor : 'rgba(54, 162, 235, 1)',
			borderWidth : 1
		}
	}

	,
	options : {
		responsive : true,
		title : {
			display : true,
			text : 'Thống kê lượt like trong 6 tháng'
		},
	}
};

var config_exchange = {
	type : 'line',
	data : {
		labels : [ "1/2017", "2/2017", "3/2017", "4/2017", "5/2017", "6/2017" ],
		datasets : {
			label : "Exchange",
			data : [ 350, 540, 680, 875, 658, 50 ],
			fill : false,
			borderColor : 'rgba(75, 192, 192, 1)',
			borderWidth : 1
		}
	},
	options : {
		responsive : true,
		title : {
			display : true,
			text : 'Thống kê giao dịch mua truyện trong 6 tháng'
		},
	}
};

window.onload = function() {
	var context_newuser = document.getElementById("chart_newuser").getContext(
			"2d");
	window.myLine1 = new Chart(context_newuser, config_newuser);

	var context_writebook = document.getElementById("chart_writebook")
			.getContext("2d");
	window.myLine2 = new Chart(context_writebook, config_writebook);

	var context_writechapter = document.getElementById("chart_writechapter")
			.getContext("2d");
	window.myLine3 = new Chart(context_writechapter, config_writechapter);

	var context_read = document.getElementById("chart_read").getContext("2d");
	window.myLine4 = new Chart(context_read, config_read);

	var context_like = document.getElementById("chart_like").getContext("2d");
	window.myLine5 = new Chart(context_like, config_like);

	var context_exchange6 = document.getElementById("chart_exchange")
			.getContext("2d");
	window.myLine6 = new Chart(context_exchange, config_exchange);
};
