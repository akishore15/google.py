<%@ Page Language="C#" %>
<!DOCTYPE html>
<html>
<head>
    <title>Python in ASPX</title>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/brython@3.8.10/brython.min.js"></script>
</head>
<body onload="brython()">
    <h1>Running Python in an ASPX file</h1>
    <script type="text/python">
        from browser import document
        
        # Your Python code here
        def add_numbers(a, b):
            return a + b
        
        def display_result(event):
            # Get values from input fields
      <%@ Page Language="C#" %>
<!DOCTYPE html>
<html>
<head>
    <title>Python in ASPX</title>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/brython@3.8.10/brython.min.js"></script>
</head>
<body onload="brython()">
    <h1>Running Python in an ASPX file</h1>
    <script type="text/python">
        from browser import document
        
        
        
        def display_result(event):
            # Get values from input fields
            num1 = float(document["num1"].value)
            num2 = float(document["num2"].value)
            result = add_numbers(num1, num2)
            document["output"].text = f"Result: {result}"
        
        document["calculate_btn"].bind("click", display_result)
    </script>
    <p>Enter two numbers:</p>
    <input type="text" id="num1" />
    <input type="text" id="num2" />
    <button id="calculate_btn">Calculate</button>
    <p id="output"></p>
</body>
</html>

    </script>
    <p>Enter two numbers:</p>
    <input type="text" id="num1" />
    <input type="text" id="num2" />
    <button id="calculate_btn">Calculate</button>
    <p id="output"></p>
</body>
</html>
