def handle_args(*args):
    stack_acc = []
    
    for arg in args:
        if isinstance(arg, (int, float)):
            stack_acc.append(arg)
        elif arg in ['+', '*']:
            b = stack_acc.pop()
            a = stack_acc.pop()
            if arg == '+':
                stack_acc.append(a + b)
            elif arg == '*':
                stack_acc.append(a * b)
    
    return stack_acc

# Example usage
result = handle_args(4, 8, '+', 3, '*')
print(result[0])  # Output will be 8
