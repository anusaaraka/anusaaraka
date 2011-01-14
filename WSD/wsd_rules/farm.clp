
(defrule farm0
(declare (salience 5000))
(id-root ?id farm)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id farming )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id KewI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  farm.clp  	farm0   "  ?id "  KewI )" crlf))
)

;"farming","N","1.KewI"
;He uses modern methods of farming.
;
(defrule farm1
(declare (salience 4900))
(id-root ?id farm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kewa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  farm.clp 	farm1   "  ?id "  Kewa )" crlf))
)

(defrule farm2
(declare (salience 4800))
(id-root ?id farm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KewI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  farm.clp 	farm2   "  ?id "  KewI_kara )" crlf))
)

;"farm","VT","1.KewI_karanA"
;The farmer farms the land.
;
;