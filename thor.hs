tl = 1770
bl = 592 
i :: Float
i  = (tl-bl)/3
w  = 20
w2 = (105-2)/2
near = 10.015
far = w2 - near
diva p c = (fromIntegral b) / (fromIntegral a)
	where
		a = 10 ^ p
		b = ((round).(* 10 ^ p)) c
f :: Float -> Float
h = (diva 1).(* i)
f = (diva 1).(+ (-1 * (w + near))).(+ bl).(* i)
g = (diva 1).(+ (-1 * (w + far))).(+ bl).(* i)
hh = map h [0..3]
p = map f [0..3]
pp = map g [0..3]
