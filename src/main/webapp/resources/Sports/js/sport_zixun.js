//一二级菜单关联
var timer_select=window.setInterval(function(){
	var select1=document.querySelector("#first_select");
	var options=document.querySelectorAll("#first_select > option");
	var selects=document.querySelectorAll("#second_select > select");
	for(var i=0;i<options.length;i++){
		selects[i].setAttribute("data-title",options[i].value);
		var list=selects[i].classList;
		list.add("hide_select");
	}
	for(var i=0;i<selects.length;i++){
		if(select1.value==selects[i].dataset["title"]){
			var list=selects[i].classList;
			list.remove("hide_select");
			list.add("show_select");
		}
	}
},100);

	

//时间calendar
