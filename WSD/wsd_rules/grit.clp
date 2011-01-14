
(defrule grit0
(declare (salience 5000))
(id-root ?id grit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAlU_kaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grit.clp 	grit0   "  ?id "  bAlU_kaNa )" crlf))
)

(defrule grit1
(declare (salience 4900))
(id-root ?id grit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaNa_PElA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grit.clp 	grit1   "  ?id "  kaNa_PElA )" crlf))
)

;"grit","V","1.kaNa_PElAnA{KAsakara_sadZaka_para}"
;The road was gritted 
;
;