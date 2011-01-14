
(defrule contrive0
(declare (salience 5000))
(id-root ?id contrive)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id contrived )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kAlpanika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  contrive.clp  	contrive0   "  ?id "  kAlpanika )" crlf))
)

;"contrived","Adj","1.kAlpanika"
;A contrived news about her missing intended to mislead her family.
;
(defrule contrive1
(declare (salience 4900))
(id-root ?id contrive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yukwi_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  contrive.clp 	contrive1   "  ?id "  yukwi_nikAla )" crlf))
)

;"contrive","V","1.yukwi_nikAlanA{samBavawaH_Cala_ke_lie}"
(defrule contrive2
(declare (salience 4800))
(id-root ?id contrive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yukwi_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  contrive.clp 	contrive2   "  ?id "  yukwi_nikAla )" crlf))
)

;"contrive","VT","1.yukwi_nikAlanA"
;He can contrive a means of escape from the prison.
;They contrived to murder their boss.
;
