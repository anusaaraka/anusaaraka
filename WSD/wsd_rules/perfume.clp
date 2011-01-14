
(defrule perfume0
(declare (salience 5000))
(id-root ?id perfume)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  perfume.clp 	perfume0   "  ?id "  iwra )" crlf))
)

;"perfume","N","1.iwra"
;That shop is famous for selling perfumes.
;--"2.KuSabU"
;The fragrant perfume of the flowers gives us happiness.
;
(defrule perfume1
(declare (salience 4900))
(id-root ?id perfume)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sugaMXiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  perfume.clp 	perfume1   "  ?id "  sugaMXiwa_kara )" crlf))
)

;"perfume","V","1.sugaMXiwa_karanA"
;We use perfumed deodorants in our house.
;--"2.KuSabU_se_BarapUra_karaxenA"
;The roses perfumed the air.
;
