
(defrule hem0
(declare (salience 5000))
(id-root ?id hem)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Gera))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hem.clp	hem0  "  ?id "  " ?id1 "  Gera  )" crlf))
)

;The crowd was hemmed in by the police.
;pulisa ne BIdZa ko cAroM waraPa se Gera liyA
(defrule hem1
(declare (salience 4900))
(id-root ?id hem)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kinArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hem.clp 	hem1   "  ?id "  kinArA )" crlf))
)

;"hem","N","1.kinArA[kapade_kA]"
;usakI skarta kI'hem'bahuwa sunxara xiKAI xe rahI hE.
;
(defrule hem2
(declare (salience 4800))
(id-root ?id hem)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GerA_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hem.clp 	hem2   "  ?id "  GerA_dAla )" crlf))
)

;"hem","V","1.GerA_dAlanA"
;tAyagara hila para wIna ora se senA ne'hem' karake(GerA dAlakara)jIwA hE.
;
