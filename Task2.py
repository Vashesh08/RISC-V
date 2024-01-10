def process_list(input_list):
    if len(input_list) % 10 != 0:
        raise ValueError("Input List Length is not a multiple of 10")
    
    output_list = []
    for index, number in enumerate(input_list):
        if ((index + 1) % 2 != 0) and ((index + 1) % 3 != 0):
            output_list.append(number)
    return output_list

if __name__ == '__main__':
    try:
        array = list(map(int, input("Enter a list of integers separated by spaces: \n").split())) # 1 2 2 4 5
        result = process_list(array)
        print("Final Result:", *result)
    except ValueError as e:
        print(f"Error: {e}")
