
(defrule deceptive0
(declare (salience 5000))
(id-root ?id deceptive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kapatapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deceptive.clp 	deceptive0   "  ?id "  kapatapUrNa )" crlf))
)

(defrule deceptive1
(declare (salience 4900))
(id-root ?id deceptive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kapatapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deceptive.clp 	deceptive1   "  ?id "  kapatapUrNa )" crlf))
)

;"deceptive","Adj","1.kapatapUrNa"
;Her looks were quite deceptive compared to her behaviour.
;
;
