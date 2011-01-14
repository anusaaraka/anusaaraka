
(defrule chink0
(declare (salience 5000))
(id-root ?id chink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chink.clp 	chink0   "  ?id "  xarAra )" crlf))
)

;"chink","N","1.xarAra/Kanaka"
(defrule chink1
(declare (salience 4900))
(id-root ?id chink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KanakanA-KanakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chink.clp 	chink1   "  ?id "  KanakanA-KanakA )" crlf))
)

;"chink","V","1.KanakanA-KanakAnA"
