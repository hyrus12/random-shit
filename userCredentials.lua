
--[[signup() function:
    - need a check to see if the username is already registered.
    - need to be able to store user input for variables "user" and "pass" into a table within the table storedusers
    - need a check to ensure that the username and password follow guidelines, if not, then remind the user of the parameters and restart the function
]]

--initialize global table
usercredentials = {}

-- Function to get user input, create a table, insert user data into table, and insert table into global table
function signUp() -- asks users to enter a valid username and password. need to find a way to validate correct and incorrect entries
    local userinput = {}
    print("Note that only alphanumeric usernames are allowed!")
    io.write("Please enter your preferred username: ")
    local user = io.read()
    -- add a check to see if username is already in the global database
    -- add a check to see if username is has the correct parameters (alphanumeric only)
    print("Username accepted!")
    table.insert(userinput, user)
    print("Passwords must be at least 8 characters long, contain\nan uppercase letter and a symbol! ")
    io.write("Please enter a password: ")
    local pass = io.read()
    -- add a check to see if password has the correct parameters
    print("Password accepted!")
    table.insert(userinput, pass)
    table.insert(usercredentials, userinput)
    -- insert local table userinput into global table usercredentials
end

signUp()