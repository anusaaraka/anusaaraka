
(defrule lower0
(declare (salience 5000))
(id-root ?id lower)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 rent)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lower.clp 	lower0   "  ?id "  kama )" crlf))
)

(defrule lower1
(declare (salience 4900))
(id-root ?id lower)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIcA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lower.clp 	lower1   "  ?id "  nIcA_kara )" crlf))
)

;"lower","VTI","1.nIcA_karanA"
;Lower a rating
;--"2.GatAnA"
;The prices have been lowered as an election stunt.
;--"3.uwAranA"
;He lowered the chair onto the lawns. 
;
;
