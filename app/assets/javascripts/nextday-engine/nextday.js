$(function() {
	if($(".cut_off_countdown").length > 0) {
  	update_cut_off_time();
    setInterval("update_cut_off_time()", 1000 * 10); // every 10 seconds
  }
});

function update_cut_off_time() {
	$.getJSON('/nextday.json', function(nextday) {

		var countdown_timer = countdown(
			new Date(nextday.current_time), 
			new Date(nextday.cut_off_time)
		);
		
		$(".cut_off_countdown").html(countdown_timer.toHTML("em", -1));
  });
}