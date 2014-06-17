
(defrule overwhelm0
(declare (salience 5000))
(id-root ?id overwhelm)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id overwhelming )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id awyaXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  overwhelm.clp  	overwhelm0   "  ?id "  awyaXika )" crlf))
)


;@@@ Added by Pramila(BU) on 19-02-2014
;She was overwhelmed with grief.   ;shiksharthi
;वह शोक से पराभूत हो गई थी.
(defrule overwhelm1
(declare (salience 4900))
(id-root ?id overwhelm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parABUwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overwhelm.clp 	overwhelm1   "  ?id "  parABUwa_ho )" crlf))
)

;"overwhelming","Adj","1.awyaXika"
;The response was overwhelming for the concert
;
(defrule overwhelm2
(declare (salience 100))
(id-root ?id overwhelm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXika_BAvanA_prakata_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overwhelm.clp 	overwhelm2   "  ?id "  aXika_BAvanA_prakata_kara )" crlf))
)

;"overwhelm","VT","1.aXika_BAvanA_prakata_karanA"
;The guests were overwhelmed by our hospitality
;
;


