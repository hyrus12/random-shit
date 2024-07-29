--[[

  login() function:
    - need a check to ensure given username is in the database, if not, restart the function
    - need a check to ensure password matches the given username, if not, restart the function

]]--

-- initialize file containing 
require "userCredentials.lua"



-- Function to login an existing user
function login()
    io.write("Please enter your username: ")
    local storeduser = io.read()
    -- //put username checker here
    io.write("Please enter the password for " .. storeduser .. ": ")
    local storedpass = io.read()
    -- //put password checker here
    print("Login sucessful! Your clearance level is: Default")
end


-- Function to initialize login()
function securityCheck()
    login()
end

-- initialize securityCheck() function
securityCheck()