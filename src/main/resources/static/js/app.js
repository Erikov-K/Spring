$(document).ready(function() {
	changePageAndSize();
});

function changePageAndSize() {
	$('#pageSizeSelect').change(function(evt) {
		window.location.replace("/project/?pageSize=" + this.value + "&pageNumber=1");
	});
}
