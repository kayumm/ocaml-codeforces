let () =
  let input = Scanf.scanf "%s" (fun x -> x) in
  if input.[0] >= 'A' && input.[0] <= 'Z' then
    print_endline input
  else begin
    let result = ref "" in
    result := !result ^ String.make 1 @@ Char.chr @@ Char.code input.[0] - 32;
    for i = 1 to String.length input - 1 do
      result := !result ^ String.make 1 input.[i]
    done;
    print_endline !result
  end
