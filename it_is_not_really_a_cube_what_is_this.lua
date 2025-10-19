-- does this actually happen?

function _init()
u = 0.271
n = 0
s = 0.6
skew_1 = 0.97
b_shift_1 = 15.34
end

function _draw()
	cls()
	--
	-- square a ::::::::::::::::::
	--
	--print("skew_1: "..skew_1)
	--
	xmv1 = (sin(u)*31*skew_1*s)
	ymv1 = (cos(u)*31*s)
	circfill(63-xmv1,63-ymv1,2,7)
	-- reference
	--circ(63,63,31*s,8)
	--
	-- more pts as ratios on u
	-- hard coded example for
	-- small app
	--
	xmv2 = (sin(u+0.5)*31*skew_1*s)
	ymv2 = (cos(u+0.5)*31*s)
	circfill(63-xmv2,63-ymv2,2,8)
	--
	xmv3 = (sin(u+0.25)*31*skew_1*s)
	ymv3 = (cos(u+0.25)*31*s)
	circfill(63-xmv3,63-ymv3,2,8)
	--
	xmv4 = (sin(u+0.75)*31*skew_1*s)
	ymv4 = (cos(u+0.75)*31*s)
	circfill(63-xmv4,63-ymv4,2,7)
	--
	-- lines:
	line(63-xmv1,63-ymv1,63-xmv3,63-ymv3,7)
	line(63-xmv1,63-ymv1,63-xmv4,63-ymv4,7)
 line(63-xmv2,63-ymv2,63-xmv3,63-ymv3,7)
 line(63-xmv2,63-ymv2,63-xmv4,63-ymv4,7)
	--
	
	--
	b_shift_1 = (31*skew_1)/2
	--
	
	-- square b ::::::::::::::::::
	--
	--print("b_shift_1: "..b_shift_1)
	--
	xmv5 = (sin(u)*31*skew_1*s)
	ymv5 = (cos(u)*31*s)
	circfill(b_shift_1+63-xmv5,63-ymv5,2,7)
	-- reference
	--circ(63+b_shift_1,63,31*s,8)
	--
	-- more pts as ratios on u
	-- hard coded example for
	-- small app
	--
	xmv6 = (sin(u+0.5)*31*skew_1*s)
	ymv6 = (cos(u+0.5)*31*s)
	circfill(b_shift_1+63-xmv6,63-ymv6,2,8)
	--
	xmv7 = (sin(u+0.25)*31*skew_1*s)
	ymv7 = (cos(u+0.25)*31*s)
	circfill(b_shift_1+63-xmv7,63-ymv7,2,8)
	--
	xmv8 = (sin(u+0.75)*31*skew_1*s)
	ymv8 = (cos(u+0.75)*31*s)
	circfill(b_shift_1+63-xmv8,63-ymv8,2,7)
	--
	-- lines:
	line(b_shift_1+63-xmv5,63-ymv5,b_shift_1+63-xmv7,63-ymv7,7)
	line(b_shift_1+63-xmv5,63-ymv5,b_shift_1+63-xmv8,63-ymv8,7)
 line(b_shift_1+63-xmv6,63-ymv6,b_shift_1+63-xmv7,63-ymv7,7)
 line(b_shift_1+63-xmv6,63-ymv6,b_shift_1+63-xmv8,63-ymv8,7)
	--
	--
	-- lines:
	line(63-xmv1,63-ymv1,b_shift_1+63-xmv5,63-ymv5,7)
	line(63-xmv2,63-ymv2,b_shift_1+63-xmv6,63-ymv6,7)
 line(63-xmv3,63-ymv3,b_shift_1+63-xmv7,63-ymv7,7)
 line(63-xmv4,63-ymv4,b_shift_1+63-xmv8,63-ymv8,7)
	--
	
end

function _update()
	u += 0.01
	if btn(➡️) then
		u += 0.01
	end
	if btn(⬅️) then
		u -= 0.01
	end
	if btn(⬆️) then
		n += 0.01
	end
	if btn(⬇️) then
		n -= 0.01
	end
	if btn(❎) then
		--skew_1 += 0.01
	end
	if btn(🅾️) then
		--skew_1 -= 0.01
	end
end
