
(defrule commercial0
(declare (salience 5000))
(id-root ?id commercial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vANijyika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  commercial.clp 	commercial0   "  ?id "  vANijyika )" crlf))
)

(defrule commercial1
(declare (salience 4900))
(id-root ?id commercial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyApArika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  commercial.clp 	commercial1   "  ?id "  vyApArika )" crlf))
)

;"commercial","Adj","1.vyApArika"
;Mohan is a commercial pilot in a private airline.
;
;