
(defrule mint0
(declare (salience 5000))
(id-root ?id mint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id takasAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mint.clp 	mint0   "  ?id "  takasAla )" crlf))
)

;"mint","N","1.takasAla"
;The mint was forced to close temporarily.
;--"2.poxInA"
;I like tea with mint.
;The smell freshly ground mint was heavenly.
;
(defrule mint1
(declare (salience 4900))
(id-root ?id mint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pEse_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mint.clp 	mint1   "  ?id "  pEse_banA )" crlf))
)

;"mint","V","1.pEse_banAnA"
;They used to mint coins illegally.
;
