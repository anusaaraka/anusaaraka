
(defrule despair0
(declare (salience 5000))
(id-root ?id despair)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirASA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  despair.clp 	despair0   "  ?id "  nirASA )" crlf))
)

;"despair","N","1.nirASA"
;They were rescued from despair at the last minute
;
(defrule despair1
(declare (salience 4900))
(id-root ?id despair)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirASa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  despair.clp 	despair1   "  ?id "  nirASa_ho )" crlf))
)

;"despair","VT","1.nirASa_honA"
;Don't despair--help is on the way!
;
