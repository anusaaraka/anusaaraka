
(defrule triumph0
(declare (salience 5000))
(id-root ?id triumph)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vijaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  triumph.clp 	triumph0   "  ?id "  vijaya )" crlf))
)

(defrule triumph1
(declare (salience 4900))
(id-root ?id triumph)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jIwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  triumph.clp 	triumph1   "  ?id "  jIwa )" crlf))
)

;"triumph","VTI","1.jIwanA"
;Anand triumped over his partner in the chess.
;
;