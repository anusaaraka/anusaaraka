
(defrule dozen0
(declare (salience 5000))
(id-root ?id dozen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarjana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dozen.clp 	dozen0   "  ?id "  xarjana )" crlf))
)

;"dozen","Det","1.xarjana/bAraha"
;I need two dozen of pencils.
;Eggs are sold in dozens.
;
(defrule dozen1
(declare (salience 4900))
(id-root ?id dozen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarjana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dozen.clp 	dozen1   "  ?id "  xarjana )" crlf))
)

;"dozen","N","1.xarjana/bAraha"
;Bananas are 8 rupees a dozen.
;Pack them in dozens.
;
