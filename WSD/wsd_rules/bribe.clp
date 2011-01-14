
(defrule bribe0
(declare (salience 5000))
(id-root ?id bribe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id riSvawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bribe.clp 	bribe0   "  ?id "  riSvawa )" crlf))
)

;"bribe","N","1.riSvawa"
;He was offered a bribe to do the job but he refused to accept it. 
;
(defrule bribe1
(declare (salience 4900))
(id-root ?id bribe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id riSvawa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bribe.clp 	bribe1   "  ?id "  riSvawa_xe )" crlf))
)

;"bribe","VT","1.riSvawa_xenA"
;They bribed the officials to get the licence.
;
