
(defrule husband0
(declare (salience 5000))
(id-root ?id husband)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  husband.clp 	husband0   "  ?id "  pawi )" crlf))
)

;"husband","N","1.pawi"
;mInA apane 'husband' ke sAWa vixeSa jA rahI hE
;
(defrule husband1
(declare (salience 4900))
(id-root ?id husband)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id miwavyayawA_ke_sAWa_prabaMXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  husband.clp 	husband1   "  ?id "  miwavyayawA_ke_sAWa_prabaMXa_kara )" crlf))
)

;"husband","V","1.miwavyayawA_ke_sAWa_prabaMXa_karanA"
;rameSa apane PArma ko
;
