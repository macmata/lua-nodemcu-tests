print("WIFI control");
-- put module in AP mode

require "script3"
require("script2")

mymathmodule = require("mymath")
mymathmodule.add(10,20)

script2.foo(1)
bob()

wifi.setmode(wifi.SOFTAP);
print("ESP8266 mode is: " .. wifi.getmode());
cfg={};
-- Set the SSID of the module in AP mode and access password
cfg.ssid="ESP8266";
cfg.pwd="passwordpassword";
if ssid and password then
    print("ESP8266 SSID is: " .. cfg.ssid .. " and PASSWORD is: " .. cfg.password);
end;
-- Now you should see an SSID wireless router named ESP_STATION when you scan for available WIFI networks
-- Lets connect to the module from a computer of mobile device. So, find the SSID and connect using the password selected
wifi.ap.config(cfg);
