
(defrule neighbour0
(declare (salience 5000))
(id-root ?id neighbour)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id neighbouring )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id padZosI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  neighbour.clp  	neighbour0   "  ?id "  padZosI )" crlf))
)

;"neighbouring","Adj","1.padZosI"
;--"2.padZosa_kA"
;Go to the neighbouring village.
;
(defrule neighbour1
(declare (salience 4900))
(id-root ?id neighbour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id padZosI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  neighbour.clp 	neighbour1   "  ?id "  padZosI )" crlf))
)

;"neighbour","N","1.padZosI"
;Who is your neighbour?
;
;