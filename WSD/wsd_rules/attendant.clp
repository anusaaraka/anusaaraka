
(defrule attendant0
(declare (salience 5000))
(id-root ?id attendant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAWI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  attendant.clp 	attendant0   "  ?id "  sAWI )" crlf))
)

;"attendant","Adj","1.sAWI"
;In the attendant circumstances it may not be proper to raise th eissue.
;
(defrule attendant1
(declare (salience 4900))
(id-root ?id attendant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paricAraka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  attendant.clp 	attendant1   "  ?id "  paricAraka )" crlf))
)

;"attendant","N","1.paricAraka"
;The office attendant unlocked the door for him.
;
