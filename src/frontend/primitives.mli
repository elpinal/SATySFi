open Types

val get_initial_context : HorzBox.page_scheme -> input_context

val make_environments : unit -> Typeenv.t * environment

val default_math_info : HorzBox.math_info  (* temporary *)

val default_math_decoder : FontFormat.math_decoder  (* temporary *)
