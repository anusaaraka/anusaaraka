(defrule vacant1
(declare (salience 5000))
(id-root ?id vacant)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) look )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sunya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vacant.clp      vacant1   "  ?id "  sunya )" crlf))
)
;Added by priyadarsani (10.12.09)
;she had a vacant look on her face.

(defrule vacant2
(declare (salience 5000))
(id-root ?id vacant)
?mng <-(meaning_to_be_decided ?id)
(id-root =(+ ?id 1) bed )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vacant.clp      vacant1   "  ?id "  kAlI )" crlf))
)
;Add by priyadarsani (10.12.09)
;The hospital has no vacant beds.
