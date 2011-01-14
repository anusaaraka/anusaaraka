
(defrule uplift0
(declare (salience 5000))
(id-root ?id uplift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uTAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  uplift.clp 	uplift0   "  ?id "  uTAna )" crlf))
)

;"uplift","N","1.uTAna/uwWAna/unnawi"
;Sachin Tendulkar's presence gives an uplift to the team's morale.
;
(defrule uplift1
(declare (salience 4900))
(id-root ?id uplift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UzcA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  uplift.clp 	uplift1   "  ?id "  UzcA_kara )" crlf))
)

;"uplift","VT","1.UzcA_kara/uTA"
;Sachin Tendulkar's presence uplifts the team's morale.
;
