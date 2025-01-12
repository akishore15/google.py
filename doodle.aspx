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
        
        class google:
            def search(query):
                import wikipedia
                query = input("Enter search query: ")
                result = wikipedia.summary(query)
                if query not in wikipedia:
                    while query not in wikipedia:
                        result = "Sorry, I cannot assist with that."
                else:
                    query = input("Enter search query: ")
                    result = wikipedia.summary(query)
                print(result)

            def game():
                import turtle
                import tkinter
                def w():
                    turtle.up(90)
                def a():
                    turtle.left(90)
                def s():
                    turtle.down(90)
                def d():
                    turtle.right(90)
                tk = tkinter.Tk()
                up_b = tkinter.Button(tk, text="North", command=w).pack()
                do_b = tkinter.Button(tk, text="South", command=s).pack()
                le_b = tkinter.Button(tk, text="West", command=a).pack()
                ri_b = tkinter.Button(tk, text="East", command=d).pack()

        # Example function to call one of the methods
        def run_search():
            google.search(input("Enter search query: "))
        
        def run_game():
            google.game()

        document["search_btn"].bind("click", run_search)
        document["game_btn"].bind("click", run_game)
    </script>
    <button id="search_btn">Run Search</button>
    <button id="game_btn">Run Game</button>
    <p id="output"></p>
</body>
</html>

