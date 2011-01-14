
(defrule narrow0
(declare (salience 5000))
(id-root ?id narrow)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkIrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  narrow.clp 	narrow0   "  ?id "  saMkIrNa )" crlf))
)

;"narrow","Adj","1.saMkIrNa"
;The streets in my village are very narrow.
;
(defrule narrow1
(declare (salience 4900))
(id-root ?id narrow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkIrNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  narrow.clp 	narrow1   "  ?id "  saMkIrNa_kara )" crlf))
)

(defrule narrow2
(declare (salience 4800))
(id-root ?id narrow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkIrNa_bAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  narrow.clp 	narrow2   "  ?id "  saMkIrNa_bAnA )" crlf))
)

;default_sense && category=verb	parimiwa_yA_waMga_kara	0
;"narrow","VT","1.parimiwa_yA_waMga_karanA"
;Please narrow the distance between two vehicles!
;
