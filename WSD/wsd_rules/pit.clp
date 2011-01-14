
(defrule pit0
(declare (salience 5000))
(id-root ?id pit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gadDA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pit.clp     pit0   "  ?id "  gadDA )" crlf))
)

;"pit","N","1.gaharA_gaDDA"
;Put all the leaves in the pit in that ground.
;That metal pit is still open.
;--"2.koyale_kI_KAna"
;To go in coal mine pit is a risky job.
;
(defrule pit1
(declare (salience 4900))
(id-root ?id pit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gadDe_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pit.clp 	pit1   "  ?id "  gadDe_banA )" crlf))
)

;"pit","V","1.gadDe_banAnA"
;The acid had pitted the surface of zinc piece.
;--"1.bIja_nikAlanA"
;Eat pitted dates.
;
