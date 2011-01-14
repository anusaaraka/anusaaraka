
(defrule abolish0
(declare (salience 5000))
(id-root ?id abolish)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id unmUlana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  abolish.clp 	abolish0   "  ?id "  unmUlana_kara )" crlf))
)

(defrule abolish1
(declare (salience 4900))
(id-root ?id abolish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id unmUlana_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  abolish.clp 	abolish1   "  ?id "  unmUlana_ho )" crlf))
)

;"abolish","VT","1.unmUlana_karanA[honA]"
;The Excise tax has been abolished.
;
