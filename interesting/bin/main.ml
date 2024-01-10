let rec sum_of_squares index array = 
  if index = 0 then 0
  else if array.(index - 1) < 0 then sum_of_squares (index - 1) array
  else array.(index - 1) * array.(index - 1) + sum_of_squares (index - 1) array

let () =
  print_string "\nThis program is going to print sum of squares of all the elements in the array using recursion\n\n";
  
  print_string "Enter the elements of the array separated by spaces: ";
  
  let input_str = read_line () in
  let array_values = 
    input_str 
    |> String.trim
    |> String.split_on_char ' '
    |> List.map int_of_string
    |> Array.of_list
  in
  
  let n = Array.length array_values in

  let result = sum_of_squares n array_values in
  
  Printf.printf "Sum of squares of the elements in the list using recursion: %d\n" result