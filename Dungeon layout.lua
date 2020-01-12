--EWRAM address for the dungeon map. This can either print them out on the lua console, or as a file.
--These addresses are relevant for the true dungeon layout. The map itself is based on this, but with differences.
--y: 0-15
local start = 	0x007ED0
local start2 = 	0x0080D0
local start3 = 	0x0082D0
local start4 = 	0x0084D0
--y: 16-31
local start5 = 	0x0086D0
local start6 = 	0x0088D0
local start7 = 	0x008AD0
local start8 = 	0x008CD0
--y: 32-47
local start9 = 	0x008ED0
local start10 = 0x0090D0
local start11 = 0x0092D0
local start12 = 0x0094D0
--y: 48-63
local start13 = 0x0096D0
local start14 = 0x0098D0
local start15 = 0x009AD0
local start16 = 0x009CD0
local offset = 0x20
local offset2 = 0x1E
local format = string.format
console.clear()

--Correct, niave method for comparison
function out_file()
	file = io.open("map overworld.txt","w")
	io.output(file)
	io.write("overworld_tile = {\n")
--Split x into 4 chunks
	for y = 0,15 do
		io.write("["..y.."] = {")
		for x = 0,30,2 do
			local real_x = x/2
			local temp = start + offset*y + x
			io.write("["..(real_x).."] = 0x"..("%06X"):format(temp))
			io.write(", ")
		end
		for x = 0,30,2 do
			local real_x = (x/2)+16
			local temp = start2 + offset*y + x
			io.write("["..(real_x).."] = 0x"..("%06X"):format(temp))
			io.write(", ")
		end
		for x = 0,30,2 do
			local real_x = (x/2)+32
			local temp = start3 + offset*y + x
			io.write("["..(real_x).."] = 0x"..("%06X"):format(temp))
			io.write(", ")
		end
		for x = 0,30,2 do
			local real_x = (x/2)+48
			local temp = start4 + offset*y + x
			io.write("["..(real_x).."] = 0x"..("%06X"):format(temp))
			if real_x < 63 then io.write(", ") end
		end
		io.write("},\n")
	end
	--Y: 16-31
	for y = 0,15 do
		io.write("["..(y+16).."] = {")
		for x = 0,30,2 do
			local real_x = x/2
			local temp = start5 + offset*y + x
			io.write("["..(real_x).."] = 0x"..("%06X"):format(temp))
			io.write(", ")
		end
		for x = 0,30,2 do
			local real_x = (x/2)+16
			local temp = start6 + offset*y + x
			io.write("["..(real_x).."] = 0x"..("%06X"):format(temp))
			io.write(", ")
		end
		for x = 0,30,2 do
			local real_x = (x/2)+32
			local temp = start7 + offset*y + x
			io.write("["..(real_x).."] = 0x"..("%06X"):format(temp))
			io.write(", ")
		end
		for x = 0,30,2 do
			local real_x = (x/2)+48
			local temp = start8 + offset*y + x
			io.write("["..(real_x).."] = 0x"..("%06X"):format(temp))
			if real_x < 63 then io.write(", ") end
		end
		io.write("},\n")
	end
	--Y: 32-47
	for y = 0,15 do
		io.write("["..(y+32).."] = {")
		for x = 0,30,2 do
			local real_x = x/2
			local temp = start9 + offset*y + x
			io.write("["..(real_x).."] = 0x"..("%06X"):format(temp))
			io.write(", ")
		end
		for x = 0,30,2 do
			local real_x = (x/2)+16
			local temp = start10 + offset*y + x
			io.write("["..(real_x).."] = 0x"..("%06X"):format(temp))
			io.write(", ")
		end
		for x = 0,30,2 do
			local real_x = (x/2)+32
			local temp = start11 + offset*y + x
			io.write("["..(real_x).."] = 0x"..("%06X"):format(temp))
			io.write(", ")
		end
		for x = 0,30,2 do
			local real_x = (x/2)+48
			local temp = start12 + offset*y + x
			io.write("["..(real_x).."] = 0x"..("%06X"):format(temp))
			if real_x < 63 then io.write(", ") end
		end
		io.write("},\n")
	end
	--Y: 48-63
	for y = 0,15 do
		io.write("["..(y+48).."] = {")
		for x = 0,30,2 do
			local real_x = x/2
			local temp = start13 + offset*y + x
			io.write("["..(real_x).."] = 0x"..("%06X"):format(temp))
			io.write(", ")
		end
		for x = 0,30,2 do
			local real_x = (x/2)+16
			local temp = start14 + offset*y + x
			io.write("["..(real_x).."] = 0x"..("%06X"):format(temp))
			io.write(", ")
		end
		for x = 0,30,2 do
			local real_x = (x/2)+32
			local temp = start15 + offset*y + x
			io.write("["..(real_x).."] = 0x"..("%06X"):format(temp))
			io.write(", ")
		end
		for x = 0,30,2 do
			local real_x = (x/2)+48
			local temp = start16 + offset*y + x
			io.write("["..(real_x).."] = 0x"..("%06X"):format(temp))
			if real_x < 63 then io.write(", ") end
		end
		if y < 15 then io.write("},\n") else io.write("}\n") end
	end
	io.write("}")
	io.close(file)
end

function out_file2()
	file = io.open("map overworld.txt","w")
	io.output(file)
	io.write("overworld_tile = {\n")
	--Split x into 4 chunks
	for y = 0,63 do
		io.write("["..y.."] = {")
		local l_start1 = 0
		local l_start2 = 0
		local l_start3 = 0
		local l_start4 = 0
		if y <= 15 then
			l_start1 = start
			l_start2 = start2
			l_start3 = start3
			l_start4 = start4
		elseif y > 15 and y <= 31 then
			l_start1 = start5 - 0x200	--Need to subtract 0x200 for it to work with y
			l_start2 = start6 - 0x200
			l_start3 = start7 - 0x200
			l_start4 = start8 - 0x200
		elseif y > 31 and y <= 47 then
			l_start1 = start9 - 0x400
			l_start2 = start10 - 0x400
			l_start3 = start11 - 0x400
			l_start4 = start12 - 0x400
		elseif y > 47 then
			l_start1 = start13 - 0x600
			l_start2 = start14 - 0x600
			l_start3 = start15 - 0x600
			l_start4 = start16 - 0x600
		end
		for x = 0,126,2 do
			local real_x = x/2
			local temp = 0
			if real_x <= 15 then 
				temp = l_start1 + offset*y + x
			elseif real_x > 15 and real_x <= 31 then
				temp = l_start2+ offset*y + x-32	--Subtract 32/4/96 to get back to 0-15 range with respect to start2/3/4
			elseif real_x > 31 and real_x <= 47 then
				temp = l_start3+ offset*y + x-64
			elseif real_x > 47 then
				temp = l_start4+ offset*y + x-96
			end
			io.write("["..(real_x).."] = 0x"..("%06X"):format(temp))
			if real_x < 63 then io.write(", ") end
		end
		if y < 63 then io.write("},\n") else io.write("}\n") end
	end
	io.write("}")
	io.close(file)
end

function out_console()
	console.log("Top Left map (y: 0-15; x: 0-15)\nRow\tCol\t\tStart\tEnd")
	for y = 0, 15 do
		local temp = start + offset*y --+ x
		local temp2 = temp + offset2
		console.log(y.."\t0-15\t"..("%06X"):format(temp).."\t"..("%06X"):format(temp2))	
	end
	console.log("\nTop Left map2 (y: 0-15; x: 16-31)\nRow\tCol\t\tStart\tEnd")
	for y = 0, 15 do
		local temp = start2 + offset*y --+ x
		local temp2 = temp + offset2
		console.log(y.."\t16-31\t"..("%06X"):format(temp).."\t"..("%06X"):format(temp2))	
	end
	console.log("\nTop Right map (y: 0-15; x: 32-47)\nRow\tCol\t\tStart\tEnd")
	for y = 0, 15 do
		local temp = start3 + offset*y --+ x
		local temp2 = temp + offset2
		console.log(y.."\t32-47\t"..("%06X"):format(temp).."\t"..("%06X"):format(temp2))	
	end
	console.log("\nTop Right map2 (y: 0-15; x: 48-63)\nRow\tCol\t\tStart\tEnd")
	for y = 0, 15 do
		local temp = start4 + offset*y --+ x
		local temp2 = temp + offset2
		console.log(y.."\t48-63\t"..("%06X"):format(temp).."\t"..("%06X"):format(temp2))	
	end
	console.log("\nLeft map (y: 16-31; x: 0-15)\nRow\tCol\t\tStart\tEnd")
	for y = 0, 15 do
		local temp = start5 + offset*y --+ x
		local temp2 = temp + offset2
		console.log(y.."\t0-15\t"..("%06X"):format(temp).."\t"..("%06X"):format(temp2))	
	end
	console.log("\nLeft map2 (y: 16-31; x: 16-31)\nRow\tCol\t\tStart\tEnd")
	for y = 0, 15 do
		local temp = start6 + offset*y --+ x
		local temp2 = temp + offset2
		console.log(y.."\t16-31\t"..("%06X"):format(temp).."\t"..("%06X"):format(temp2))	
	end
	console.log("\nRight map (y: 16-31; x: 32-47)\nRow\tCol\t\tStart\tEnd")
	for y = 0, 15 do
		local temp = start7 + offset*y --+ x
		local temp2 = temp + offset2
		console.log(y.."\t32-47\t"..("%06X"):format(temp).."\t"..("%06X"):format(temp2))	
	end
	console.log("\nRight map2 (y: 16-31; x: 48-63)\nRow\tCol\t\tStart\tEnd")
	for y = 0, 15 do
		local temp = start8 + offset*y --+ x
		local temp2 = temp + offset2
		console.log(y.."\t48-63\t"..("%06X"):format(temp).."\t"..("%06X"):format(temp2))	
	end
	console.log("\nLeft map (y: 32-47; x: 0-15)\nRow\tCol\t\tStart\tEnd")
	for y = 0, 15 do
		local temp = start9 + offset*y --+ x
		local temp2 = temp + offset2
		console.log(y.."\t0-15\t"..("%06X"):format(temp).."\t"..("%06X"):format(temp2))	
	end
	console.log("\nLeft map2 (y: 32-47; x: 16-31)\nRow\tCol\t\tStart\tEnd")
	for y = 0, 15 do
		local temp = start10 + offset*y --+ x
		local temp2 = temp + offset2
		console.log(y.."\t16-31\t"..("%06X"):format(temp).."\t"..("%06X"):format(temp2))	
	end
	console.log("\nRight map (y: 32-47; x: 32-47)\nRow\tCol\t\tStart\tEnd")
	for y = 0, 15 do
		local temp = start11 + offset*y --+ x
		local temp2 = temp + offset2
		console.log(y.."\t32-47\t"..("%06X"):format(temp).."\t"..("%06X"):format(temp2))	
	end
	console.log("\nRight map2 (y: 32-47; x: 48-63)\nRow\tCol\t\tStart\tEnd")
	for y = 0, 15 do
		local temp = start12 + offset*y --+ x
		local temp2 = temp + offset2
		console.log(y.."\t48-63\t"..("%06X"):format(temp).."\t"..("%06X"):format(temp2))	
	end
	console.log("\nBottom Left map (y: 48-63; x: 0-15)\nRow\tCol\t\tStart\tEnd")
	for y = 0, 15 do
		local temp = start13 + offset*y --+ x
		local temp2 = temp + offset2
		console.log(y.."\t0-15\t"..("%06X"):format(temp).."\t"..("%06X"):format(temp2))	
	end
	console.log("\nBottom Left map2 (y: 48-63; x: 16-31)\nRow\tCol\t\tStart\tEnd")
	for y = 0, 15 do
		local temp = start14 + offset*y --+ x
		local temp2 = temp + offset2
		console.log(y.."\t16-31\t"..("%06X"):format(temp).."\t"..("%06X"):format(temp2))	
	end
	console.log("\nBottom Right map (y: 48-63; x: 32-47)\nRow\tCol\t\tStart\tEnd")
	for y = 0, 15 do
		local temp = start15 + offset*y --+ x
		local temp2 = temp + offset2
		console.log(y.."\t32-47\t"..("%06X"):format(temp).."\t"..("%06X"):format(temp2))	
	end
	console.log("\nBottom Right map2 (y: 48-63; x: 48-63)\nRow\tCol\t\tStart\tEnd")
	for y = 0, 15 do
		local temp = start16 + offset*y --+ x
		local temp2 = temp + offset2
		console.log(y.."\t48-63\t"..("%06X"):format(temp).."\t"..("%06X"):format(temp2))	
	end
end

out_file2()
