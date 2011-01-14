
(defrule daily0
(declare (salience 5000))
(id-root ?id daily)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xEnika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  daily.clp 	daily0   "  ?id "  xEnika )" crlf))
)

;"daily","Adj","1.xEnika/prawi_xina_kA"
;A daily record
;A daily newspaper
;
(defrule daily1
(declare (salience 4900))
(id-root ?id daily)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawi_xina))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  daily.clp 	daily1   "  ?id "  prawi_xina )" crlf))
)

;"daily","Adv","1.prawi_xina/prawi_xivasa"
;He stops by daily
;
(defrule daily2
(declare (salience 4800))
(id-root ?id daily)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xEnika_samAcAra_pawra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  daily.clp 	daily2   "  ?id "  xEnika_samAcAra_pawra )" crlf))
)

;"daily","N","1.xEnika_samAcAra_pawra"
;This story appeared in all the national dailies.
;
