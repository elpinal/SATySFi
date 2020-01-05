
module type S =
  sig
    type key

    type 'a t

    val empty : 'a -> 'a t

    val to_string : (key -> string) -> ('a -> string) -> 'a t -> string

    val find_stage : 'a t -> key list -> 'a option

    val update : 'a t -> key list -> ('a -> 'a) -> ('a t) option

    val add_stage : 'a t -> key list -> key -> 'a -> ('a t) option

    val search_backward : 'a t -> key list -> key list -> ('a -> 'b option) -> 'b option
    
    val fold_backward : 'a t -> key list -> key list -> ('b -> 'a -> 'b) -> 'b -> 'b

    val child_keys : 'a t -> key list -> key list option
  end


module Make (Key : Map.OrderedType) : S with type key = Key.t
