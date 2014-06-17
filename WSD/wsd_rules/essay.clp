;@@@ Added by Pramila(BU) on 05-02-2014
;He made an essay to the problem.   ;shiksharthi
;उसने समस्या को हल करने का प्रयास किया.
(defrule essay2
(declare (salience 5000))
(id-root ?id essay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(kriyA-to_saMbanXI  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prayAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  essay.clp 	essay2   "  ?id "  prayAsa )" crlf))
)

;---------------------- Default rules --------------------
(defrule essay0
(declare (salience 100))
(id-root ?id essay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nibaMXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  essay.clp 	essay0   "  ?id "  nibaMXa )" crlf))
)

;"essay","N","1.nibaMXa/prabanXa/varNana/racanA"
;--"2.yawna"
;
(defrule essay1
(declare (salience 100))
(id-root ?id essay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prayawna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  essay.clp 	essay1   "  ?id "  prayawna_kara )" crlf))
)

;"essay","VT","1.prayawna_karanA/pariSrama_karanA/jAzcanA"
