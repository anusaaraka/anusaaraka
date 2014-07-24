
;@@@ Added by Pramila(BU) on 26-02-2014
;The Police had warrant to fire.  ;shiksharthi
;पुलिस को गोली चलाने का अधिकार था.
(defrule warrant0
(declare (salience 5000))
(id-root ?id warrant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-to_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXikAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  warrant.clp 	warrant0   "  ?id "  aXikAra )" crlf))
)

;@@@ Added by Pramila(BU) on 26-02-2014
;I warrant that he is dead.   ;shiksharthi
; मैं विश्वास दिलाता हूँ कि वह मृत है.
(defrule warrant1
(declare (salience 4900))
(id-root ?id warrant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-vAkyakarma  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSvAsa_xilA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  warrant.clp 	warrant1   "  ?id "  viSvAsa_xilA )" crlf))
)


(defrule warrant2
(declare (salience 100))
(id-root ?id warrant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXikAra_pawra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  warrant.clp 	warrant2   "  ?id "  aXikAra_pawra )" crlf))
)

(defrule warrant3
(declare (salience 100))
(id-root ?id warrant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pramANika_TaharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  warrant.clp 	warrant3   "  ?id "  pramANika_TaharA )" crlf))
)

;"warrant","VT","1.pramANika_TaharAnA"
;He warranted the statement given by the lawyer 
;
;
