
(defrule diverge0
(declare (salience 5000))
(id-root ?id diverge)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alaga_alaga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  diverge.clp 	diverge0   "  ?id "  alaga_alaga_kara )" crlf))
)

(defrule diverge1
(declare (salience 4900))
(id-root ?id diverge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alaga_alaga_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  diverge.clp 	diverge1   "  ?id "  alaga_alaga_ho )" crlf))
)

;"diverge","VI","1.alaga_alaga_honA[karanA]"
;The two paths diverge here
;The lines start to diverge here
;
