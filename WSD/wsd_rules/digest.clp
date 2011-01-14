
(defrule digest0
(declare (salience 5000))
(id-root ?id digest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIwi_saMgraha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  digest.clp 	digest0   "  ?id "  nIwi_saMgraha )" crlf))
)

;"digest","N","1.nIwi_saMgraha"
;I read lot of digests.
;
(defrule digest1
(declare (salience 4900))
(id-root ?id digest)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pacA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  digest.clp 	digest1   "  ?id "  pacA )" crlf))
)

;"digest","VT","1.pacAnA"
;I cannot digest milk products.
;
;default_sense && transitivity=INTR && category=verb	paca	0
; This food is difficult to digest.
; Underlying sent is: It is difficult to digest this food. 
