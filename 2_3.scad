module whoScrewedUpMyDonut(screwUpRate)
{
	R = 179;
	G = 97;
	B = 28;
union(){
	color([(1-screwUpRate)*R/255, (1-screwUpRate)*G/255, (1-screwUpRate)*B/255]){
	
		rotate_extrude(convexity = 10, $fn = 100)
			hull(){
				translate([15, 0, 0])
 					circle(r = 10); 
		
				translate([screwUpRate*25+20, screwUpRate*(-5), 0])
					circle(r = 5);
			}
    }

	for ( i = [0 : 9] )
	{
    rotate( i * 360 / 10, [0, 0, 1])
    translate([(35+screwUpRate*25)/2, 0, 0])
    sphere(r = (screwUpRate*25+25-(35+screwUpRate*25)/2)/2, $fn = 50);
	}
}
}

// choose a screwUpRate from 0-1
whoScrewedUpMyDonut(0);