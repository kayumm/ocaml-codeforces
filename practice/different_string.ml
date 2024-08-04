let main () =
  for _ = 1 to read_int () do
    let inp = Scanf.scanf " %s" @@ fun i -> i 
    and count = ref 1 in
    for i = 0 to String.length inp - 2 do
      if inp.[i] = inp.[i + 1] then count := !count + 1
    done;
    
    if !count = String.length inp then print_endline "NO"
    else (
      let inp2 = inp |> Bytes.of_string in
      for i = 0 to Bytes.length inp2 - 2 do
        if Bytes.get inp2 i != Bytes.get inp2 (i+1) then begin
          let tmp = Bytes.get inp2 i in
          Bytes.set inp2 i (Bytes.get inp2 (i+1));
          Bytes.set inp2 (i+1) tmp;
        end;
      done;
      print_endline "YES";
      print_endline (Bytes.to_string inp2))
  done
 
let _ = main ()
