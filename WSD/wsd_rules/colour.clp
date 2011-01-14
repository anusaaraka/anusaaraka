
(defrule colour0
(declare (salience 5000))
(id-root ?id colour)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id colored )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id raMgA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  colour.clp  	colour0   "  ?id "  raMgA_huA )" crlf))
)

(defrule colour1
(declare (salience 4900))
(id-root ?id colour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  colour.clp 	colour1   "  ?id "  raMga )" crlf))
)

;"colour","N","1.raMga"
;The ribbons on the dress were in beautiful colours.
;
(defrule colour2
(declare (salience 4800))
(id-root ?id colour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  colour.clp 	colour2   "  ?id "  raMga )" crlf))
)

;"colour","V","1.raMganA"
;He coloured the pots in red.
;
