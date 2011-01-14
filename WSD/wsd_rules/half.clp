;Meaning changed from "AXA_BAga" to "arXAMSa" to get the proper Apertium_output (Meena 18.11.10)
;Likewise, the painful pressure on your eardrums at the bottom of a pool is not affected if you insert or remove a partition between the two halves of the pool.
(defrule half0
(declare (salience 5000))
(id-root ?id half)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id arXAMSa))
;(assert (id-wsd_root_mng ?id AXA_BAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  half.clp 	half0   "  ?id "  arXAMSa )" crlf))
)

(defrule half1
(declare (salience 4900))
(id-root ?id half)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AXA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  half.clp 	half1   "  ?id "  AXA )" crlf))
)

;"half","Adj","1.AXA"
;SyAma ne rotI kA"half"BAga apane Cote BAI ko xe xiyA. 
;
;
