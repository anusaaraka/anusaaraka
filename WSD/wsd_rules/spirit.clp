
(defrule spirit0
(declare (salience 5000))
(id-root ?id spirit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AwmA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spirit.clp 	spirit0   "  ?id "  AwmA )" crlf))
)

(defrule spirit1
(declare (salience 4900))
(id-root ?id spirit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id udZA_le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spirit.clp 	spirit1   "  ?id "  udZA_le_jA )" crlf))
)

;"spirit","V","1.udZA le jAnA"
;The wind spirited off his papers.
;--"2.uwsAha baDZAnA"  
;The crowd spirited the Indian team.
;
;