
(defrule alternate0
(declare (salience 5000))
(id-root ?id alternate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekAnwarawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  alternate.clp 	alternate0   "  ?id "  ekAnwarawa )" crlf))
)

;"alternate","Adj","1.ekAnwarawa"
;The maid servant comes on alternate days.
;
(defrule alternate1
(declare (salience 4900))
(id-root ?id alternate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bArI-bArI_se_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  alternate.clp 	alternate1   "  ?id "  bArI-bArI_se_kara )" crlf))
)

;"alternate","V","1.bArI-bArI_se_karanA"
;Most farmers alternate their crops.
;
