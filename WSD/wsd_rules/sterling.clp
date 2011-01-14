
(defrule sterling0
(declare (salience 5000))
(id-root ?id sterling)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSvasanIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sterling.clp 	sterling0   "  ?id "  viSvasanIya )" crlf))
)

;"sterling","Adj","1.viSvasanIya"
;Her work is sterling as compared to other.
;
(defrule sterling1
(declare (salience 4900))
(id-root ?id sterling)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAuMdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sterling.clp 	sterling1   "  ?id "  pAuMdZa )" crlf))
)

;"sterling","N","1.pAuMdZa"
;British people use sterling for purchasing things.
;--"2.cAnxI_kA_ABURaNa"
;Rita collected much sterling silver jewellery for her marriage.
;
