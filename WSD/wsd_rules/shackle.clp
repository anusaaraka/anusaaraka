
(defrule shackle0
(declare (salience 5000))
(id-root ?id shackle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id haWakadZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shackle.clp 	shackle0   "  ?id "  haWakadZI )" crlf))
)

;"shackle","N","1.haWakadZI"
;The prisoner was chained with shackles to prevent from escaping.
;
(defrule shackle1
(declare (salience 4900))
(id-root ?id shackle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id haWakadZI_dZAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shackle.clp 	shackle1   "  ?id "  haWakadZI_dZAla )" crlf))
)

;"shackle","V","1.haWakadZI_dZAlanA"
;The police shackled the thief && took him to the prison.
;--"2.rokanA"
;He was shackled by his friend from blabing away his secrets.
;
