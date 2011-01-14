
(defrule brace0
(declare (salience 5000))
(id-root ?id brace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XanukoRTaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brace.clp 	brace0   "  ?id "  XanukoRTaka )" crlf))
)

;"brace","N","1.XanukoRTaka"
;He wore a brace on his knee
;
(defrule brace1
(declare (salience 4900))
(id-root ?id brace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqDZa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brace.clp 	brace1   "  ?id "  xqDZa_kara )" crlf))
)

;"brace","VT","1.xqDZa_karanA"
;Brace your elbows while working on the potter's wheel.
;
