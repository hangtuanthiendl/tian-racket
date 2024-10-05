stack = []

def push_stack(value):
    stack.append(value)

def pop_stack():
    return stack.pop()

def handle(arg=None):
    if isinstance(arg, (int, float)):
        push_stack(arg)
    elif arg in ['+', '*']:
        b = pop_stack()
        a = pop_stack()
        if arg == '+':
            push_stack(a + b)
        elif arg == '*':
            push_stack(a * b)

# Example usage
handle(4)
handle(8)
handle('+')
handle(3)
handle('*')
print(stack[0])  # Output will be 8
