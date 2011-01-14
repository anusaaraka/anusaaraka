
(defrule fellow0
(declare (salience 5000))
(id-root ?id fellow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 student)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAWI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fellow.clp 	fellow0   "  ?id "  sAWI )" crlf))
)

(defrule fellow1
(declare (salience 4900))
(id-root ?id fellow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pelo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fellow.clp 	fellow1   "  ?id "  Pelo )" crlf))
)

;default_sense && category=noun	vyakwi	0
;"fellow","N","1.vyakwi"
;He is a good fellow.
;Where can a fellow get a cab at this time of night.
;--"2.saBAsaxa"
;He is a fellow of the Institution of Engineers.
;--"3.sahacara"
;He was my fellow traveller on the long journey.
;
;
