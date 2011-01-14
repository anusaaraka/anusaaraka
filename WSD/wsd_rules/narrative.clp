
(defrule narrative0
(declare (salience 5000))
(id-root ?id narrative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id varNaNAwmaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  narrative.clp 	narrative0   "  ?id "  varNaNAwmaka )" crlf))
)

;"narrative","Adj","1.varNAwmaka"
;He is a professor of narrative literature.
;It was a narrative story.
;
(defrule narrative1
(declare (salience 4900))
(id-root ?id narrative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id varNaNAwmaka_kahAnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  narrative.clp 	narrative1   "  ?id "  varNaNAwmaka_kahAnI )" crlf))
)

;"narrative","N","1.varNAwmaka_kahAnI"
;`The English Patient' novel contains more of narrative than dialogues.
;The incident was self narrative.
;
