
(defrule royal0
(declare (salience 5000))
(id-root ?id royal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAhI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  royal.clp 	royal0   "  ?id "  SAhI )" crlf))
)

;"royal","Adj","1.SAhI"
;He belongs to a royal family.
;Her uncle had a royal visit to America.
;His father is a member of royal society of arts.
;King of jorden got a royal welcome when he came to india.  
;
(defrule royal1
(declare (salience 4900))
(id-root ?id royal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAhI_KAnaxAna_kA_vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  royal.clp 	royal1   "  ?id "  SAhI_KAnaxAna_kA_vyakwi )" crlf))
)

;"royal","N","1.SAhI_KAnaxAna_kA_vyakwi"
;The young royals enjoy life.
;
