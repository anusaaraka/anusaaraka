
(defrule featherbed0
(declare (salience 5000))
(id-root ?id featherbed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paMKoM_se_BarA_gaxxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  featherbed.clp 	featherbed0   "  ?id "  paMKoM_se_BarA_gaxxA )" crlf))
)

;"featherbed","N","1.paMKoM_se_BarA_gaxxA"
;He always sleeps on a mattress as light as a featherbed.
;
(defrule featherbed1
(declare (salience 4900))
(id-root ?id featherbed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AsAna_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  featherbed.clp 	featherbed1   "  ?id "  AsAna_banA )" crlf))
)

;"featherbed","V","1.AsAna_banAnA"
;Public sector industries have been featherbedded by the Government for too long.
;
