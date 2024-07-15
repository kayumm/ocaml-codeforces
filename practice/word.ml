let () =
  let byteInp = read_line () |> Bytes.of_string in
  let hi, lo = ref 0, ref 0 in
  for i = 0 to Bytes.length byteInp - 1 do
    if Bytes.get byteInp i >= 'a' && Bytes.get byteInp i <= 'z' then lo := !lo + 1
    else hi := !hi + 1
  done;
  if lo >= hi then byteInp |> Bytes.lowercase |> print_endline
  else byteInp |> Bytes.uppercase |> print_endline
 
