
;Added by Meena(24.11.09)
;Her career lasted almost thirty years.
(defrule career0
(declare (salience 5000))
(id-root ?id career)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-RaRTI_viSeRaNa ?id ?id1)(viSeRya-viSeRaNa ?id ?id1))
;(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kEriyara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  career.clp    career0   "  ?id "  kEriyara )" crlf))
)


;Salience reduced by Meena(24.11.09)
(defrule career1
;(declare (salience 5000))
(declare (salience 0))
(id-root ?id career)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jIvikA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  career.clp 	career1   "  ?id "  jIvikA )" crlf))
)

(defrule career2
(declare (salience 4900))
(id-root ?id career)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sarapata_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  career.clp 	career2   "  ?id "  sarapata_jA )" crlf))
)

;"career","VI","1.sarapata_jAnA"
;The cars careered down the road.
;
;
