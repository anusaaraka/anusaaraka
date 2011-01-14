
(defrule grave0
(declare (salience 5000))
(id-root ?id grave)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaMBIra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grave.clp 	grave0   "  ?id "  gaMBIra )" crlf))
)

;"grave","Adj","1.gaMBIra"
;He is in grave danger of being attacked by the terrorists.
;
(defrule grave1
(declare (salience 4900))
(id-root ?id grave)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kabra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grave.clp 	grave1   "  ?id "  kabra )" crlf))
)

;"grave","N","1.kabra"
;The graves are the reminders of great men.
;
;LEVEL 
;Headword : grave
;
;
;Examples --
;
;"grave","Adj","1.gaMBIra"
;He is in grave danger of being attacked by the terrorists.
;
;"grave","N","1.kabra"
;The tombs have graves of the royal family.
;
;
;sUwra : gamBIra/kabra
