
(defrule lynch0
(declare (salience 5000))
(id-root ?id lynch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PAzsI_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lynch.clp 	lynch0   "  ?id "  PAzsI_xe )" crlf))
)

;"lynch","V","1.PAzsI_xenA{avEXa_warIke_se}"
(defrule lynch1
(declare (salience 4900))
(id-root ?id lynch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PAzsI_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lynch.clp 	lynch1   "  ?id "  PAzsI_xe )" crlf))
)

;"lynch","VT","1.PAzsI_xenA{avEXa_warIke_se}"
