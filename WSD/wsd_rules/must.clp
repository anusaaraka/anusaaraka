
(defrule must0
(declare (salience 5000))
(id-root ?id must)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) a)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AvaSyaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  must.clp 	must0   "  ?id "  AvaSyaka )" crlf))
)

;A glass of milk is a must for her.
(defrule must1
(declare (salience 4900))
(id-root ?id must)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAhiye))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  must.clp 	must1   "  ?id "  cAhiye )" crlf))
)

;"must","V","1.cAhiye"
;I must go finish this job today.
;
