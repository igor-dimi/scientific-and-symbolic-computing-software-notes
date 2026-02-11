from IPython.display import display, Markdown

def qshow(expr, display_mode="block"):
    """
    Render Sage expressions as real math in Quarto HTML+PDF.
    display_mode: "block" (default) or "inline"
    """
    tex = latex(expr)
    if display_mode == "inline":
        display(Markdown(f"$ {tex} $"))
    else:
        display(Markdown(f"$$ {tex} $$"))
