
open LengthInterface


type file_path = string

type bbox = float * float * float * float

type key

val initialize : unit -> unit

val add_pdf : file_path -> int -> key

val add_image : file_path -> key

val get_height_from_width : key -> length -> length

val get_ratio : key -> length -> length -> float * float

val get_xobject_dictionary : Pdf.t -> Pdf.pdfobject

val get_tag : key -> string

val get_color_space : key -> Pdf.pdfobject option
