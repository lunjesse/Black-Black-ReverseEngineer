local hex = bizstring.hex
console.clear()
line = "rng = {\n"

--[[
Trace log:
1.	0802C587:  0000B510  PUSH    {r4,LR}                   r0:00000008 r1:00000005 r2:0200606A r3:0200606C r4:081594F6 r5:00000000 r6:0200607C r7:02005FE0 r8:02006074 r9:08470B79 r10:08470AC4 r11:00000000 r12:00000001 r13:03007BF4 r14:08005A85 r15:0802C586 r16:6000003F
2.	0802C589:  0000490A  LDR     r1, [PC, #40]             r0:00000008 r1:00000005 r2:0200606A r3:0200606C r4:081594F6 r5:00000000 r6:0200607C r7:02005FE0 r8:02006074 r9:08470B79 r10:08470AC4 r11:00000000 r12:00000001 r13:03007BEC r14:08005A85 r15:0802C588 r16:6000003F
3.	0802C58B:  00004C0A  LDR     r4, [PC, #40]             r0:00000008 r1:02036F9C r2:0200606A r3:0200606C r4:081594F6 r5:00000000 r6:0200607C r7:02005FE0 r8:02006074 r9:08470B79 r10:08470AC4 r11:00000000 r12:00000001 r13:03007BEC r14:08005A85 r15:0802C58A r16:6000003F
4.	0802C58D:  00008820  LDRH    r0, [r4]                  r0:00000008 r1:02036F9C r2:0200606A r3:0200606C r4:03001928 r5:00000000 r6:0200607C r7:02005FE0 r8:02006074 r9:08470B79 r10:08470AC4 r11:00000000 r12:00000001 r13:03007BEC r14:08005A85 r15:0802C58C r16:6000003F
5.	0802C58F:  00008008  STRH    r0, [r1]                  r0:000095FE r1:02036F9C r2:0200606A r3:0200606C r4:03001928 r5:00000000 r6:0200607C r7:02005FE0 r8:02006074 r9:08470B79 r10:08470AC4 r11:00000000 r12:00000001 r13:03007BEC r14:08005A85 r15:0802C58E r16:6000003F
6.	0802C591:  00004B0A  LDR     r3, [PC, #40]             r0:000095FE r1:02036F9C r2:0200606A r3:0200606C r4:03001928 r5:00000000 r6:0200607C r7:02005FE0 r8:02006074 r9:08470B79 r10:08470AC4 r11:00000000 r12:00000001 r13:03007BEC r14:08005A85 r15:0802C590 r16:6000003F
7.	0802C593:  00002000  MOV     r0, #0                    r0:000095FE r1:02036F9C r2:0200606A r3:02036FA0 r4:03001928 r5:00000000 r6:0200607C r7:02005FE0 r8:02006074 r9:08470B79 r10:08470AC4 r11:00000000 r12:00000001 r13:03007BEC r14:08005A85 r15:0802C592 r16:6000003F
8.	0802C595:  00005E0A  LDRSH   r2, [r1, r0]              r0:00000000 r1:02036F9C r2:0200606A r3:02036FA0 r4:03001928 r5:00000000 r6:0200607C r7:02005FE0 r8:02006074 r9:08470B79 r10:08470AC4 r11:00000000 r12:00000001 r13:03007BEC r14:08005A85 r15:0802C594 r16:6000003F
9.	0802C597:  00000050  LSL     r0, r2, #1                r0:00000000 r1:02036F9C r2:FFFF95FE r3:02036FA0 r4:03001928 r5:00000000 r6:0200607C r7:02005FE0 r8:02006074 r9:08470B79 r10:08470AC4 r11:00000000 r12:00000001 r13:03007BEC r14:08005A85 r15:0802C596 r16:6000003F
10.	0802C599:  00001880  ADD     r0, r0, r2                r0:FFFF2BFC r1:02036F9C r2:FFFF95FE r3:02036FA0 r4:03001928 r5:00000000 r6:0200607C r7:02005FE0 r8:02006074 r9:08470B79 r10:08470AC4 r11:00000000 r12:00000001 r13:03007BEC r14:08005A85 r15:0802C598 r16:6000003F
11.	0802C59B:  00008018  STRH    r0, [r3]                  r0:FFFEC1FA r1:02036F9C r2:FFFF95FE r3:02036FA0 r4:03001928 r5:00000000 r6:0200607C r7:02005FE0 r8:02006074 r9:08470B79 r10:08470AC4 r11:00000000 r12:00000001 r13:03007BEC r14:08005A85 r15:0802C59A r16:6000003F
12.	0802C59D:  0000785A  LDRB    r2, [r3, #1]              r0:FFFEC1FA r1:02036F9C r2:FFFF95FE r3:02036FA0 r4:03001928 r5:00000000 r6:0200607C r7:02005FE0 r8:02006074 r9:08470B79 r10:08470AC4 r11:00000000 r12:00000001 r13:03007BEC r14:08005A85 r15:0802C59C r16:6000003F
13.	0802C59F:  0000780B  LDRB    r3, [r1]                  r0:FFFEC1FA r1:02036F9C r2:000000C1 r3:02036FA0 r4:03001928 r5:00000000 r6:0200607C r7:02005FE0 r8:02006074 r9:08470B79 r10:08470AC4 r11:00000000 r12:00000001 r13:03007BEC r14:08005A85 r15:0802C59E r16:6000003F
14.	0802C5A1:  000018D0  ADD     r0, r2, r3                r0:FFFEC1FA r1:02036F9C r2:000000C1 r3:000000FE r4:03001928 r5:00000000 r6:0200607C r7:02005FE0 r8:02006074 r9:08470B79 r10:08470AC4 r11:00000000 r12:00000001 r13:03007BEC r14:08005A85 r15:0802C5A0 r16:6000003F
15.	0802C5A3:  00007008  STRB    r0, [r1]                  r0:000001BF r1:02036F9C r2:000000C1 r3:000000FE r4:03001928 r5:00000000 r6:0200607C r7:02005FE0 r8:02006074 r9:08470B79 r10:08470AC4 r11:00000000 r12:00000001 r13:03007BEC r14:08005A85 r15:0802C5A2 r16:6000003F
16.	0802C5A5:  0000704A  STRB    r2, [r1, #1]              r0:000001BF r1:02036F9C r2:000000C1 r3:000000FE r4:03001928 r5:00000000 r6:0200607C r7:02005FE0 r8:02006074 r9:08470B79 r10:08470AC4 r11:00000000 r12:00000001 r13:03007BEC r14:08005A85 r15:0802C5A4 r16:6000003F
17.	0802C5A7:  00008808  LDRH    r0, [r1]                  r0:000001BF r1:02036F9C r2:000000C1 r3:000000FE r4:03001928 r5:00000000 r6:0200607C r7:02005FE0 r8:02006074 r9:08470B79 r10:08470AC4 r11:00000000 r12:00000001 r13:03007BEC r14:08005A85 r15:0802C5A6 r16:6000003F
18.	0802C5A9:  00008020  STRH    r0, [r4]                  r0:0000C1BF r1:02036F9C r2:000000C1 r3:000000FE r4:03001928 r5:00000000 r6:0200607C r7:02005FE0 r8:02006074 r9:08470B79 r10:08470AC4 r11:00000000 r12:00000001 r13:03007BEC r14:08005A85 r15:0802C5A8 r16:6000003F
19.	0802C5AB:  00007808  LDRB    r0, [r1]                  r0:0000C1BF r1:02036F9C r2:000000C1 r3:000000FE r4:03001928 r5:00000000 r6:0200607C r7:02005FE0 r8:02006074 r9:08470B79 r10:08470AC4 r11:00000000 r12:00000001 r13:03007BEC r14:08005A85 r15:0802C5AA r16:6000003F
20.	0802C5AD:  0000BC10  POP     {r4}                      r0:000000BF r1:02036F9C r2:000000C1 r3:000000FE r4:03001928 r5:00000000 r6:0200607C r7:02005FE0 r8:02006074 r9:08470B79 r10:08470AC4 r11:00000000 r12:00000001 r13:03007BEC r14:08005A85 r15:0802C5AC r16:6000003F
21.	0802C5AF:  0000BC02  POP     {r1}                      r0:000000BF r1:02036F9C r2:000000C1 r3:000000FE r4:081594F6 r5:00000000 r6:0200607C r7:02005FE0 r8:02006074 r9:08470B79 r10:08470AC4 r11:00000000 r12:00000001 r13:03007BF0 r14:08005A85 r15:0802C5AE r16:6000003F
22.	0802C5B1:  00004708  BX      r1                        

Line comments:
1. Pushes register 4 and Link Register to stack.
2. Loads 0x02036F9C to register 1. This address holds a copy of the RNG.
3. Loads 0x03001928 to register 4. This address holds the current RNG.
4. Loads the current RNG to register 0
5. Stores the current RNG to 0x02036F9C
6. Loads 0x02036FA0 to register 3. This address holds the bottom 8 bits of the old RNG
7. Set register 0 to 0
8. Loads the current RNG, sign extended (make bits 16-31 the same as bits 15) to register 2
9. Shift the sign extended RNG to the left by 1. This is the same as multiplying by 2.
10. Add the left shifted, sign extended RNG with the origin sign extended RNG. Together with 9, this is the same as RNG * 3.
11. Store the rightmost 16 bits of RNG * 3 to 0x02036FA0. Eg. If RNG was 0x95FE , and 0x95FE * 3 = 0x1C1FA, then only 0xC1FA would be stored. 
12. Take the most significant 8 bits of RNG * 3, and store it to register 2. This is the same value as (RNG * 3) rshift 8, or floor((RNG * 3)/ 2^8). Continuing the above example, this means load 0xC1 to register 2.
13. Load the bottom 8 bits of the old (current) RNG that was saved to 0x02036F9C, and place it to register 3. This is the same as old RNG % 256
14. Add the bottom 8 bits of the old RNG (ie. RNG % 256) with the most significant 8 bits of RNG * 3 (ie. (RNG * 3) rshift 8)
15. Store the bottom 8 bits of the new RNG to 0x02036F9C
16. Store the top 8 bits of RNG * 3 to 0x02036F9C
17. Load the value in 0x0x02036F9C to register 0. 
18. Store that to 0x03001928
19. Load the bottom 8 bits of the new RNG to register 0
20. Restore register 4 from stack
20. Restore Link Register from stack, load it to register 1
21. Branch to the address in register 1.
]]--

function next_rng1(value)
	--Explicitly writing down what the registers are; ignoring load/stores
	--Only r0, r2, r3 changes
	--r0 = bottom 8 bits of new rng (LDRB at the end)
	--r2 = top 8 bits of new rng
	--r3 = bottom 8 bits of old rng
	local r2 = value								--Line 8; ignores sign extend (it's not important)
	local r0 = bit.lshift(value, 1)					--Line 9 LSL     r0, r2, #1
	r0 = value + r2									--Line 10 ADD     r0, r0, r2
	r2 = bit.rshift(r0,8)							--Line 11, 12; same effect, without using load/stores (takes top 8 bits of RNG * 3)
	local r3 = bit.band(value, 0xFF)				--Line 13; same effect, without using load/stores (bottom 8 bits of old RNG)
	r0 = r2 + r3									--Line 14
	r0 = bit.band(r0, 0xFF)							--Line 15; same effect without using load/stores (specfically the store byte ignores everything > 0xFF)
	r0 = r0 + bit.rshift(r2, 8)						--Line 16; same effect without using load/stores (r2 shifted to make it > 0xFF so as to be able to treat it as top bits eg. 0xC100)
	return bit.band(r0, 0xFFFF)						--Line 18; the AND 0xFFFF removes the sign extended crap which isn't stored	
end

function next_rng2(value)
	--Simplification of the above
	local r0 = value								--Lines 8; using r0 instead of r2 because r2 would be changed later anyways
	r0 = value + bit.lshift(value, 1)				--Lines 9, 10
	local r2 = math.floor(r0/256)					--Lines 11, 12; same effect as right shift
	local r3 = value % 256							--Lines 13; same effect as AND 0xFF
	r0 = ((r2 + r3) % 256) + (r2 * 256)				--Lines 14, 15, 16
	return r0 % 65536								--Line 18; same effect as AND 0xFFFF
end
	
function next_rng3(value)
	--Even shorter code
	local x = math.floor(3*value/256)				--This is bit.rshift(3 * value,8)
	local r = ((x + value) % 256) + (x * 256)		--bit.band same as mod 256
	return r % 65536								--Same as mod 65536
end

function next_rng4(value)
	--Single line RNG
	return (((math.floor(3*value/256) + value) % 256) + (math.floor(3*value/256) * 256)) % 65536
end

local rng = {}
local right_byte = {}
rng[1] = 0xD37
for i = 1, 43534 do--43534  do
	rng[#rng+1] = next_rng(rng[#rng])
	if bit.band(next_rng(rng[#rng]),0xFF) == 0x3C then
		right_byte[#right_byte+1] = next_rng(rng[#rng])
		console.log((next_rng(rng[#rng])))
	end
end

-- file = io.open("RNG.txt","w")
-- io.output(file)
-- io.write(line)
-- for i = 1, #rng do
	-- io.write("["..rng[i].."] = "..i..",\n")
-- end
-- io.write("}")
-- io.close(file)


file = io.open("inverseRNG.txt","w")
io.output(file)
io.write(line)
for i = 1, #rng do
	io.write("["..i.."] = "..rng[i]..",\n")
end
io.write("}")
io.close(file)
