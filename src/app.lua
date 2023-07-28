local stm = require "tsmodem.driver.stm"
local timer = require "tsmodem.driver.timer"
local state = require "tsmodem.driver.state"
local modem = require "tsmodem.driver.modem"

local signal = require("posix.signal")
signal.signal(signal.SIGINT, function(signum)

  io.write("\n")
  print("-----------------------")
  print("Tsmodem debug stopped.")
  print("-----------------------")
  io.write("\n")
  os.exit(128 + signum)
end)


modem(state, stm, timer)
