
(defrule nicotine0
(declare (salience 5000))
(id-root ?id nicotine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wambAkU_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nicotine.clp 	nicotine0   "  ?id "  wambAkU_kA )" crlf))
)

;"nicotine","Adj","1.wambAkU_kA"
;Nicotine drugs are prohibited.
;
(defrule nicotine1
(declare (salience 4900))
(id-root ?id nicotine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikotIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nicotine.clp 	nicotine1   "  ?id "  nikotIna )" crlf))
)

;"nicotine","N","1.nikotIna"
;Nicotine is bad for health.
;
