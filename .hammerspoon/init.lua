local inputEnglish = "com.apple.keylayout.ABC"

function hello()
	local inputSource = hs.keycodes.currentSourceID()
	if not (inputSource == inputEnglish) then
		hs.keycodes.currentSourceID(inputEnglish)
	end
	hs.eventtap.keyStroke({}, 'escape')
	hs.eventtap.keyStroke({}, 'l')
end

hs.hotkey.bind({'control'}, 33, hello)