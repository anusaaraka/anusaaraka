
(defrule tatter0
(declare (salience 5000))
(id-root ?id tatter)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id tattered )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id PatA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  tatter.clp  	tatter0   "  ?id "  PatA_huA )" crlf))
)

;"tattered","Adj","1.PatA_huA"
;--"2.PatA-purAnA"
;He entered the room with tattered clothes.
;
(defrule tatter1
(declare (salience 4900))
(id-root ?id tatter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ciWadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tatter.clp 	tatter1   "  ?id "  ciWadZA )" crlf))
)

;"tatter","N","1.ciWadZA"
;His dress is in tatters.
;
;