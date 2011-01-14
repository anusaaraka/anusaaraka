
(defrule drizzle0
(declare (salience 5000))
(id-root ?id drizzle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bUMxA_bAMxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drizzle.clp 	drizzle0   "  ?id "  bUMxA_bAMxI )" crlf))
)

;"drizzle","N","1.bUMxA_bAMxI"
(defrule drizzle1
(declare (salience 4900))
(id-root ?id drizzle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bUMxA_bAMxI_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drizzle.clp 	drizzle1   "  ?id "  bUMxA_bAMxI_ho )" crlf))
)

;"drizzle","V","1.bUMxA_bAMxI_honA"
;It was drizzling when we left home.
;--"2.CidZakanA"
;Drizzle the meat with melted butter
;
