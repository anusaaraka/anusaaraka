
(defrule awe0
(declare (salience 5000))
(id-root ?id awe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vismayapUrNa_Axara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  awe.clp 	awe0   "  ?id "  vismayapUrNa_Axara )" crlf))
)

;"awe","N","1.vismayapUrNa_Axara[dara]"
;My first view of the Lal Quila filled me with awe.
;
(defrule awe1
(declare (salience 4900))
(id-root ?id awe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vismayapUrNa_Axara_uwpanna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  awe.clp 	awe1   "  ?id "  vismayapUrNa_Axara_uwpanna_kara )" crlf))
)

;"awe","VT","1.vismayapUrNa_Axara[dara]_uwpanna_karanA"
;Ram's scholarship awed Sita.
;rAma kI vixvawwA sIwA ke mana meM vismayapUrNa Axara uwpanna karawI WI.
;
