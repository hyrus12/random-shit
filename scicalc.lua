-- Function to display the calculator menu
function displayMenu()
    print("Scientific Calculator Menu:")
    print("1. Addition (+)")
    print("2. Subtraction (-)")
    print("3. Multiplication (*)")
    print("4. Division (/)")
    print("5. Exponentiation (base^exponent)")
    print("6. Square Root (sqrt)")
    print("7. Sine (sin)")
    print("8. Cosine (cos)")
    print("9. Tangent (tan)")
    print("10. Natural Logarithm (log)")
    print("11. Exponential (exp)")
    print("0. Exit")
    io.write("Enter your choice: ")
end

-- Function to perform arithmetic operations
function arithmeticOperation(operation)
    if operation == "+" or operation == "-" or operation == "*" then
        local numbers = {}

        -- Read numbers from user input
        while true do
            io.write("Enter number (or 'done' to finish input): ")
            local input = io.read()
            
            if input == "done" then
                break
            else
                local num = tonumber(input)
                if num then
                    table.insert(numbers, num)
                else
                    print("Invalid number. Please enter a valid number or 'done' to finish.")
                end
            end
        end

        -- Perform operation based on user input
        if operation == "+" then
            local sum = 0
            for _, num in ipairs(numbers) do
                sum = sum + num
            end
            return sum
        elseif operation == "-" then
            local result = numbers[1]
            for i = 2, #numbers do
                result = result - numbers[i]
            end
            return result
        elseif operation == "*" then
            local result = 1
            for _, num in ipairs(numbers) do
                result = result * num
            end
            return result
        end
    elseif operation == "/" then
        io.write("Enter first number: ")
        local num1 = tonumber(io.read()) or 0
        io.write("Enter second number: ")
        local num2 = tonumber(io.read()) or 1  -- Default to 1 to avoid division by zero

        if num2 == 0 then
            print("Error: Cannot divide by zero!")
            return nil
        else
            return num1 / num2
        end
    elseif operation == "^" then
        io.write("Enter base: ")
        local base = tonumber(io.read()) or 0
        io.write("Enter exponent: ")
        local exponent = tonumber(io.read()) or 0
        return base ^ exponent
    elseif operation == "sqrt" then
        io.write("Enter number: ")
        local num = tonumber(io.read()) or 0
        return math.sqrt(num)
    elseif operation == "sin" then
        io.write("Enter number: ")
        local num = tonumber(io.read()) or 0
        return math.sin(num)
    elseif operation == "cos" then
        io.write("Enter number: ")
        local num = tonumber(io.read()) or 0
        return math.cos(num)
    elseif operation == "tan" then
        io.write("Enter number: ")
        local num = tonumber(io.read()) or 0
        return math.tan(num)
    elseif operation == "log" then
        io.write("Enter number: ")
        local num = tonumber(io.read()) or 1
        return math.log(num)
    elseif operation == "exp" then
        io.write("Enter number: ")
        local num = tonumber(io.read()) or 0
        return math.exp(num)
    else
        print("Invalid operation!")
        return nil
    end
end

-- Main calculator function
function scientificCalculator()
    repeat
        print()
        displayMenu()
        local choice = io.read()

        if choice == "0" then
            print("Exiting calculator. Goodbye!")
            break
        elseif choice == "1" or choice == "2" or choice == "3" or choice == "4" 
            or choice == "5" or choice == "6" or choice == "7" or choice == "8" 
            or choice == "9" or choice == "10" or choice == "11" then

            local operation = ""
            if choice == "1" then
                operation = "+"
            elseif choice == "2" then
                operation = "-"
            elseif choice == "3" then
                operation = "*"
            elseif choice == "4" then
                operation = "/"
            elseif choice == "5" then
                operation = "^"
            elseif choice == "6" then
                operation = "sqrt"
            elseif choice == "7" then
                operation = "sin"
            elseif choice == "8" then
                operation = "cos"
            elseif choice == "9" then
                operation = "tan"
            elseif choice == "10" then
                operation = "log"
            elseif choice == "11" then
                operation = "exp"
            end

            local result = arithmeticOperation(operation)
            if result ~= nil then
                print("Result: " .. result)
            end
        else
            print("Invalid choice. Please enter a valid option.")
        end

    until choice == "0"
end

-- Run the scientific calculator
scientificCalculator()
