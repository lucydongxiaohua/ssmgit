$(document).ready(function() {
	//加载svg图片
	Scale();
	SvgScale();

});

function Scale() {
	$("#viewArea").mousewheel(function(event, delta) {
//		SvgScale();
		event.preventDefault(); //阻止原来事件的触发
//		event.stopPropagation(); //阻止事件的传播，阻止其被分派到其他的Document节点
	});
}

function SvgScale() {

	var margin = {
			left: 0,
			top: 0,
			right: 10,
			bottom: 10
		},
		width = $("#viewArea").width(), //1200
		height = $("#viewArea").height(),
		g_width = 405,
		g_height = 405,
		ratio_init = 0.1;
	var container = d3.select("#group1-1");
	container
		.attr("x", "0")
		.attr("y", "0")
		.attr("width", g_width)
		.attr("height", g_height);

	function dragstarted(d) {
		d3.event.sourceEvent.stopPropagation(); //阻止事件的传播
		d3.select(this).classed("dragging", true);
	}

	function dragged(d) {
		d3.select(this).attr("cx", d.x = d3.event.x).attr("cy", d.y = d3.event.y);
	}

	function dragended(d) {
		d3.select(this).classed("dragging", false);

	}

	function zoomed() {
		d3.event.sourceEvent.preventDefault();
		container.attr("transform", "translate(" + d3.event.translate + ")scale(" + d3.event.scale + ")");
	}
	var zoom = d3.behavior.zoom()
		.scaleExtent([ratio_init, 10]) //对应的缩放最大值和最小值
		.on("zoom", zoomed);
	//拖拽事件
	var drag = d3.behavior.drag()
		.on("dragstart", dragstarted)
		.on("drag", dragged)
		.on("dragend", dragended);
	//选择事件
	var _svg = d3.select("#group1-1")
		.call(zoom);
	// 总容器

}