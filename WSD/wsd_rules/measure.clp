
(defrule measure0
(declare (salience 5000))
(id-root ?id measure)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id measured )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id napA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  measure.clp  	measure0   "  ?id "  napA )" crlf))
)

(defrule measure1
(declare (salience 4900))
(id-root ?id measure)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id measured )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id napA-wulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  measure.clp  	measure1   "  ?id "  napA-wulA )" crlf))
)

;"measured","Adj","1.napA-wulA"
;His answers are always well measured.
;
;
(defrule measure2
(declare (salience 4800))
(id-root ?id measure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  measure.clp 	measure2   "  ?id "  mApa )" crlf))
)

;"measure","N","1.mApa"
;It is advisable to ascertain the correct measure of every thing purchased.
;
(defrule measure3
(declare (salience 4700))
(id-root ?id measure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  measure.clp 	measure3   "  ?id "  nApa )" crlf))
)

;"measure","V","1.nApanA"
;He measured the lenght of the room.
;--"2.nirNaya_karanA/pawA_lagAnA"
;Can one really measure the ability of a candidate in a ten minute interview?
;--"3.nApa_kA_honA"
;The lenght of the trouser measures 41 inches.
;--"4.nApa_wola_karanA"
;She never measures the effect of what she is going to say.
;
