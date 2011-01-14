
(defrule scald0
(declare (salience 5000))
(id-root ?id scald)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scald.clp 	scald0   "  ?id "  jalA )" crlf))
)

;"scald","N","1.jalA/xravaxAha"
;For minor burns && scalds, cool the affected area under running water.
;
(defrule scald1
(declare (salience 4900))
(id-root ?id scald)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scald.clp 	scald1   "  ?id "  jalA )" crlf))
)

;"scald","V","1.jalAnA{garama_pAnI_se}"
;She was scalded badly when hot tea fell on her.
;--"2.garama_karanA/ubAlanA"
;She scalded the milk to drink.
;
