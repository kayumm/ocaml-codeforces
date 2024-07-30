let check = function
  | 'A' -> 1
  | 'B' -> 2
  | 'C' -> 3
  | _ -> 0
 
let () =
  let arr = Array.make_matrix 3 3 ' ' in
  for _ = 1 to read_int () do
    Array.iteri begin fun i a ->
      Array.iteri begin fun j _ ->
        arr.(i).(j) <- Scanf.scanf " %c" (fun x -> x)
      end a
    end arr;
    let sum = ref 0 in
    Array.iteri begin fun i a ->
      Array.iteri begin fun j _ ->
        sum := !sum + check arr.(i).(j)
      end a
    end arr;
    if 18 - !sum = 1 then Printf.printf "A\n"
    else if 18 - !sum = 2 then Printf.printf "B\n"
    else if 18 - !sum = 3 then Printf.printf "C\n"
  done
