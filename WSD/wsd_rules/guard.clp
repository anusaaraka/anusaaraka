
(defrule guard0
(declare (salience 5000))
(id-root ?id guard)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paharexAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  guard.clp 	guard0   "  ?id "  paharexAra )" crlf))
)

(defrule guard1
(declare (salience 4900))
(id-root ?id guard)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raKavAlI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  guard.clp 	guard1   "  ?id "  raKavAlI_kara )" crlf))
)

;"guard","VT","1.raKavAlI_karanA"
;I am  guarding the field against any cattle intrusion.
;
;