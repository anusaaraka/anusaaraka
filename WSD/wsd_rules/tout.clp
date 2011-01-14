
(defrule tout0
(declare (salience 5000))
(id-root ?id tout)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xalAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tout.clp 	tout0   "  ?id "  xalAla )" crlf))
)

;"tout","N","1.xalAla"
;A tout collects more money.
;
(defrule tout1
(declare (salience 4900))
(id-root ?id tout)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xalAlI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tout.clp 	tout1   "  ?id "  xalAlI_kara )" crlf))
)

;"tout","VI","1.xalAlI_kara"
;He touted the product.
;
