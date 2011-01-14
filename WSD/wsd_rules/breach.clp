
(defrule breach0
(declare (salience 5000))
(id-root ?id breach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  breach.clp 	breach0   "  ?id "  xarAra )" crlf))
)

;"breach","N","1.xarAra"
;The bridge developed a breach soonafter construction.
;
(defrule breach1
(declare (salience 4900))
(id-root ?id breach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  breach.clp 	breach1   "  ?id "  xarAra_kara )" crlf))
)

;"breach","VT","1.xarAra_karanA"
;Our tanks breached their defence.
;
