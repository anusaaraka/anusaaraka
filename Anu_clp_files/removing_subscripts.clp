 (defglobal ?*link_cat-file* = l_cat_fp)
 (defglobal ?*link_word-file* = l_wrd_fp)
 (defglobal ?*link_n_wrd-file* = l_nu_w_fp)

 (deffunction string_to_integer (?parser_id)
; Removes the first characterfrom the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?parser_id)))
 
  ;----------------------------------------------------------------------------------------------------------------
  (deffunction print_word_cat_info (?pid ?id ?str ?cat)
	(printout ?*link_word-file* "(parserid-word  " ?pid "   "?str")" crlf)
        (printout ?*link_n_wrd-file* "(parser_numeric_id-word   "?id"   "?str")" crlf)
        (printout ?*link_cat-file* "(parserid-cat_coarse       " ?pid"  "?cat")" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
;  (defrule remove_left_right_wall_ids
;  (declare (salience 100))
;  ?f0<-(parserid-word ?pid RIGHT-WALL|LEFT-WALL)
;  ?f1<-(parser_numeric_id-word ?id RIGHT-WALL|LEFT-WALL)
;  (test (= (string_to_integer ?pid) ?id))
;  =>
;   	(retract ?f0 ?f1)
;  )
  ;----------------------------------------------------------------------------------------------------------------
  ; Running is good for health.
  ; if link word subscript is "g" then take it as verbal_noun (running.g )then
  ; remove subscripts from the word Ex : (parserid-word  P5  health.n-u) as (parserid-word  P5  health)
  ; Added by Shirisha Manju (14-04-11) 
  (defrule get_link_word
  (declare (salience 51))
  ?f0<-(parserid-word ?pid ?word)
  ?f1<-(parser_numeric_id-word ?id ?word)
  (test (and (neq (numberp ?word) TRUE)(neq ?word .)));We lost 30 minutes in the traffic jam.
  (test (neq (str-index ".g" ?word)  FALSE))
  (test (= (string_to_integer ?pid) ?id))
  =>
        (retract ?f0 ?f1)
        (bind ?pos (str-index "." ?word))
        (bind ?str (string-to-field (sub-string 1 (- ?pos 1) ?word)))
        (bind ?cat "verbal_noun")
;	(print_word_cat_info ?pid ?id ?str ?cat)
	(printout ?*link_word-file* "(parserid-word  " ?pid "   "?str")" crlf)
        (printout ?*link_n_wrd-file* "(parser_numeric_id-word   "?id"   "?str")" crlf)
        (printout ?*link_cat-file* "(parserid-cat_coarse       " ?pid"  "?cat")" crlf)
  )     
  ;----------------------------------------------------------------------------------------------------------------
  (defrule get_link_word1
  (declare (salience 50))
  ?f0<-(parserid-word ?pid ?word)
  ?f1<-(parser_numeric_id-word ?id  ?word)
  (test (= ?id (string_to_integer ?pid)))
  (test (and (neq (numberp ?word) TRUE)(neq ?word .)));We lost 30 minutes in the traffic jam. 
  (test (neq (str-index "." ?word)  FALSE))
; (test (= ?id (string_to_integer ?pid)))
  =>
	(retract ?f0 ?f1)
        (bind ?pos (str-index "." ?word))
        (bind ?str (string-to-field (sub-string 1 (- ?pos 1) ?word)))
;	(bind ?cat "-")
;(print_word_cat_info ?pid ?id ?str ?cat)
	(printout ?*link_word-file* "(parserid-word  " ?pid "   "?str")" crlf)
        (printout ?*link_n_wrd-file* "(parser_numeric_id-word   "?id"   "?str")" crlf)
 ;       (printout ?*link_cat-file* "(parserid-cat_coarse       " ?pid"  "?cat")" crlf)
	(printout ?*link_cat-file* "(parserid-cat_coarse       " ?pid"  -)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  (defrule get_link_word2
  (declare (salience 25))
  ?f0<-(parserid-word ?pid ?word)
  ?f1<-(parser_numeric_id-word ?id ?word)
  (test (= ?id (string_to_integer ?pid)))
  =>
        (retract ?f0 ?f1)
;	(bind ?cat "-")
;	(print_word_cat_info ?pid ?id ?word ?cat)
	(printout ?*link_word-file* "(parserid-word  " ?pid "   "?word")" crlf)
        (printout ?*link_n_wrd-file* "(parser_numeric_id-word   "?id"   "?word")" crlf)
       ; (printout ?*link_cat-file* "(parserid-cat_coarse       " ?pid"  "?cat")" crlf)
	(printout ?*link_cat-file* "(parserid-cat_coarse       " ?pid"	-)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ; No complete linkage
  (defrule no_comp_link
  (declare (salience 10))
  (No complete linkages found)
  =>
        (printout ?*link_cat-file* "(No complete linkages found)" crlf)
        (printout ?*link_word-file* "(No complete linkages found)" crlf)
	(printout ?*link_n_wrd-file* "(No complete linkages found)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  (defrule close_files
  (declare (salience 5))
  =>
        (close ?*link_cat-file*)
        (close ?*link_word-file*)
	(close ?*link_n_wrd-file*)
  )
  ;----------------------------------------------------------------------------------------------------------------
