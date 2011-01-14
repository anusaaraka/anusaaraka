
(defrule conscious0
(declare (salience 5000))
(id-root ?id conscious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sacewa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  conscious.clp 	conscious0   "  ?id "  sacewa )" crlf))
)

(defrule conscious1
(declare (salience 4900))
(id-root ?id conscious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sacewa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  conscious.clp 	conscious1   "  ?id "  sacewa )" crlf))
)

;"conscious","Adj","1.sacewa/cewana"
;He made a conscious effort to speak more slowly.
;Young boys && girls are more conscious of their looks.
;People in India are very much politically conscious.
;--"2.sABiprAya"
;His going to Delhi was a conscious move.
;
;
