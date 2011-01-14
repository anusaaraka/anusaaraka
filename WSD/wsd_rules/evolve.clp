
(defrule evolve0
(declare (salience 5000))
(id-root ?id evolve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vikAsa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  evolve.clp 	evolve0   "  ?id "  vikAsa_kara )" crlf))
)

(defrule evolve1
(declare (salience 4900))
(id-root ?id evolve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vikAsa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  evolve.clp 	evolve1   "  ?id "  vikAsa_ho )" crlf))
)

;"evolve","VT","1.vikAsa_karanA[karanA]"
;Modern man evolved a long time ago
;We evolved an interesting idea
;
