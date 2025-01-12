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
    tk = Tk()
    up_b = Btn.pack(tk, text="North", command=w)
    do_b = Btn.pack(tk, text="South", command=s)
    le_b = Btn.pack(tk, text="West", command=a)
    ri_b = Btn.pack(tk, text="East", command=d)
  
