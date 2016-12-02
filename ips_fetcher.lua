-- #!/usr/bin/env lua
--- Pads str to length len with char from left
string.rpad = function(str, len, char)
    if char == nil then char = ' ' end
    return string.rep(char, len - #str) .. str
end

--local ips = '"111.179.201.18;104.16.102.41;104.16.154.227;104.16.155.227;104.16.173.117;104.16.107.48;104.16.127.30;104.16.160.251;104.16.161.251;104.16.173.132;104.16.174.117;104.16.218.231;104.16.219.231;104.16.57.43;104.16.64.31;104.27.140.181;104.27.141.181;164.138.29.123;37.252.127.38;84.22.97.49;104.16.175.117;104.16.176.117;104.16.177.117;104.16.178.232;104.16.179.232;104.16.22.32;104.16.23.32;104.16.218.235;104.16.219.235;104.16.24.30;104.16.25.30;104.16.67.61;104.16.91.37;104.16.92.37;104.16.68.61;104.16.81.41;104.16.82.41;104.18.34.243;104.18.35.243;"'
io.input(arg[1])
local ips = io.read("*all")

for ip in string.gmatch(ips, '(%d+.%d+.%d+.%d+);') do
    local route_command = 'route ' .. string.rpad(ip, 15) .. '  255.255.255.255'
    route_command = 'echo **' .. route_command .. '**'
    --print(route_command)
    os.execute(route_command)
end
