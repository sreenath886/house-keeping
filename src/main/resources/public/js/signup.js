
function time_pick()
{
	var h_val=$('#house_type').val();
	var x='0';
	if(h_val== 0)
		{
		x='0';
		}
	else if(h_val==1)
		{
		x='1 hr';
		}
	else if(h_val== 2)
	{
			x='2 hr';
	}
	else if(h_val== 3)
	{
	x='4 hr';
	}
	else if(h_val== 4)
	{
	x='5 hr';
	}
	
   $('#time-pick').val(x);
}



	