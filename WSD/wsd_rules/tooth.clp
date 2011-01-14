
(defrule tooth0
(declare (salience 5000))
(id-root ?id tooth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAzwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tooth.clp 	tooth0   "  ?id "  xAzwa )" crlf))
)

;"tooth","N","1.xAzwa"
;Chewing tobacco causes tooth decay.
;--"2.xAzwe[ArA_yA_giyara_kA]"
;The teeth of the saw are very sharp. .
;
(defrule tooth1
(declare (salience 4900))
(id-root ?id tooth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PazsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tooth.clp 	tooth1   "  ?id "  PazsA )" crlf))
)

;"tooth","V","1.PazsAnA"
;Rahul was very keen to tooth his friend.
;
