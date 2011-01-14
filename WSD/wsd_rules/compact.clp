
(defrule compact0
(declare (salience 5000))
(id-root ?id compact)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaTA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  compact.clp 	compact0   "  ?id "  gaTA_huA )" crlf))
)

;"compact","Adj","1.gaTA_huA"
;I saw a compact mass of sand.
;--"2.CotA_Ora_sAPa"
;This computer is compact && versatile.
;
(defrule compact1
(declare (salience 4900))
(id-root ?id compact)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xo_loga_yA_xo_xeSoM_ke_bIca_sahamawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  compact.clp 	compact1   "  ?id "  xo_loga_yA_xo_xeSoM_ke_bIca_sahamawi )" crlf))
)

;"compact","N","1.xo_loga_yA_xo_xeSoM_ke_bIca_sahamawi"
;India && USA have made a compact to fight terrorism.
;--"2.CotI_sI_dZibIyA"
;She kept her cosmetic items in a compact.
;
