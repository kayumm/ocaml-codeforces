let main () =
  let input = Scanf.scanf "%d\n" @@ fun x -> x in
  let arr = Array.make input 0 in
  for i = 0 to Array.length arr - 1 do
    let inp = Scanf.scanf "%d\n" (fun x -> x) in
    arr.(i) <- inp
  done;
  let counter = ref 1 in
  for i = 0 to Array.length arr - 2 do
    if arr.(i+1) <> arr.(i) then counter := !counter + 1
  done;
  !counter |> print_int

let _ = main ()
