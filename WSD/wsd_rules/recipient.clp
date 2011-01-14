
(defrule recipient0
(declare (salience 5000))
(id-root ?id recipient)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lene_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recipient.clp 	recipient0   "  ?id "  lene_vAlA )" crlf))
)

;"recipient","Adj","1.lene_vAlA"
;The people with AB blood group are considered as recipient persons.
;
(defrule recipient1
(declare (salience 4900))
(id-root ?id recipient)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lene_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recipient.clp 	recipient1   "  ?id "  lene_vAlA )" crlf))
)

;"recipient","N","1.lene_vAlA"
;His father is a recipient of many scientific awards.
;
