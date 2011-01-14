
(defrule sprinkle0
(declare (salience 5000))
(id-root ?id sprinkle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id sprinkling )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id CidZakAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  sprinkle.clp  	sprinkle0   "  ?id "  CidZakAva )" crlf))
)

;"sprinkling","N","1.CidZakAva"
;She was the one among tem, who were sprinkling the rose water on everyone yesterday.
;
(defrule sprinkle1
(declare (salience 4900))
(id-root ?id sprinkle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CidZaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sprinkle.clp 	sprinkle1   "  ?id "  CidZaka )" crlf))
)

;"sprinkle","V","1.CidZakanA"
;--"2.CiwarAnA"
;
