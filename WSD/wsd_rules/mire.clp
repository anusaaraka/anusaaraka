
(defrule mire0
(declare (salience 5000))
(id-root ?id mire)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kIcadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mire.clp 	mire0   "  ?id "  kIcadZa )" crlf))
)

;"mire","N","1.kIcadZa"
;Her shoes were stuck in the mire.
;
(defrule mire1
(declare (salience 4900))
(id-root ?id mire)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ataka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mire.clp 	mire1   "  ?id "  ataka )" crlf))
)

;"mire","V","1.atakanA/atakAnA"
;He should not be mired in the past.
;--"2.gaMxA_honA[karanA]"
;The mud mired our carpet.
;
