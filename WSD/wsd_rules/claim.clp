
(defrule claim0
(declare (salience 5000))
(id-root ?id claim)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  claim.clp 	claim0   "  ?id "  xAvA )" crlf))
)

(defrule claim1
(declare (salience 4900))
(id-root ?id claim)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAvA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  claim.clp 	claim1   "  ?id "  xAvA_kara )" crlf))
)

;default_sense && category=noun	xAvA	0
;"claim","N","1.xAvA"
;Despite her claims of innocence,she was found guilty.
;--"2.muAvajZe_kI_mAMga"
;The victim of the accident made claims for damages.
;--"3.jZora_xekara_kahanA"
;She made no claims that she was the best cook.
;
;
