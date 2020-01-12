--EWRAM address for the dungeon map. This can either print them out on the lua console, or as a file.
--These addresses are relevant for the generated map when pressing B, not for the true dungeon layout.
local start = 0x00FED0
local start2 = 0x0106D0
local start3 = 0x011ED0
local start4 = 0x0126D0
local offset = 0x40
local offset2 = 0x3E
local format = string.format
console.clear()
--this makes the array "Y, X" instead
--Top left map
function out_file()
	file = io.open("map.txt","w")
	io.output(file)
	io.write("map_tile = {\n")
	for y = 0,31 do
		io.write("["..y.."] = {")
		for x = 0,62,2 do
			local temp = start + offset*y + x
			local real_x = x/2
			io.write("["..(real_x).."] = 0x"..("%06X"):format(temp))
			io.write(", ")
		end
		--Top right map; reset x
		for x = 0, 62, 2 do
			local temp = start2 + offset*y + x
			local real_x = (x/2) + 32	--should range from 32 to 63
			io.write("["..(real_x).."] = 0x"..("%06X"):format(temp))
			if x < 62 then
				io.write(", ")
			end
		end
		io.write("},\n")
	end
	--Bottom left map
	for y = 0,31 do
		local real_y = y + 32	--Should range from 32 to 63
		io.write("["..real_y.."] = {")
		for x = 0, 62, 2 do
			local temp = start3 + offset*y + x
			local real_x = (x/2)
			io.write("["..(real_x).."] = 0x"..("%06X"):format(temp))
			io.write(", ")
		end
		for x = 0, 62, 2 do
			local temp = start4 + offset*y + x
			local real_x = (x/2) + 32	--should range from 32 to 63
			io.write("["..(real_x).."] = 0x"..("%06X"):format(temp))
			if x < 62 then
				io.write(", ")
			end
		end
		io.write("},\n")
	end
	io.write("}")
	io.close(file)
end

function out_console()
	console.log("Top Left map\nRow\t\tStart\tEnd")
	for y = 0, 31 do
		local temp = start + offset*y
		local temp2 = temp + offset2
		console.log(y.."\t\t"..("%06X"):format(temp).."\t"..("%06X"):format(temp2))
	end
	console.log("\nTop Right map\nRow\t\tStart\tEnd")
	for y = 0, 31 do
		local temp = start2 + offset*y
		local temp2 = temp + offset2
		console.log(y.."\t\t"..("%06X"):format(temp).."\t"..("%06X"):format(temp2))
	end
	console.log("\nBottom Left map\nRow\t\tStart\tEnd")
	for y = 0, 31 do
		local temp = start3 + offset*y
		local temp2 = temp + offset2
		console.log(y.."\t\t"..("%06X"):format(temp).."\t"..("%06X"):format(temp2))
	end
	console.log("\nBottom Right map\nRow\t\tStart\tEnd")
	for y = 0, 31 do
		local temp = start4 + offset*y
		local temp2 = temp + offset2
		console.log(y.."\t\t"..("%06X"):format(temp).."\t"..("%06X"):format(temp2))
	end
end
out_console()
