
(defrule romp0
(declare (salience 5000))
(id-root ?id romp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uCala_kUxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  romp.clp 	romp0   "  ?id "  uCala_kUxa )" crlf))
)

;"romp","N","1.uCala_kUxa"
;Children are having a romp in the party.
;--"2.majexAra_Pilma[kaWA/puswaka]"
;The latest film of Basu Chatterji is an enjoyable romp.
;
(defrule romp1
(declare (salience 4900))
(id-root ?id romp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uCala_kUxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  romp.clp 	romp1   "  ?id "  uCala_kUxa_kara )" crlf))
)

;"romp","VI","1.uCala_kUxa_karanA"
;All the puppies are romping around in the garden.
;
