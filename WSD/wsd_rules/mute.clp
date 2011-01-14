
(defrule mute0
(declare (salience 5000))
(id-root ?id mute)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mOna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mute.clp 	mute0   "  ?id "  mOna )" crlf))
)

;"mute","Adj","1.mOna"
;A mute appeal
;
(defrule mute1
(declare (salience 4900))
(id-root ?id mute)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mute.clp 	mute1   "  ?id "  mUka )" crlf))
)

;"mute","N","1.mUka/gUMgA"
