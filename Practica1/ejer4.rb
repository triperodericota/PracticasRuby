def en_palabras(aTime)
	to_show = { (0..10)=> "Son las #{aTime.hour} en punto", (11..20)=> "Son las #{aTime.hour} y cuarto", (21..34)=> "Son las #{aTime.hour} y media",
	(35..44)=> "Son las #{aTime.hour + 1} menos veinticinco", (45..55)=> "Son las #{aTime.hour + 1} menos cuarto", (56..59)=> "Son casi las #{aTime.hour + 1}"}
	puts(to_show.select {|k,v| k === aTime.min }.values[0] )

end

en_palabras(Time.now)

