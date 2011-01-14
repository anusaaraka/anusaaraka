
(defrule crucial0
(declare (salience 5000))
(id-root ?id crucial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirNAyaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crucial.clp 	crucial0   "  ?id "  nirNAyaka )" crlf))
)

(defrule crucial1
(declare (salience 4900))
(id-root ?id crucial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkatapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crucial.clp 	crucial1   "  ?id "  saMkatapUrNa )" crlf))
)

;"crucial","Adj","1.saMkatapUrNa"
;At a crucial moment he rescued me
;
;
