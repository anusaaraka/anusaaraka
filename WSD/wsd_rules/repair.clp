
(defrule repair0
(declare (salience 5000))
(id-root ?id repair)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuruswI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repair.clp 	repair0   "  ?id "  xuruswI )" crlf))
)

;"repair","N","1.xuruswI/marammawa"
;Her car has become serviceable after necessary repair.
;The process of repairing is very slow.
;
(defrule repair1
(declare (salience 4900))
(id-root ?id repair)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kA_marammawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repair.clp 	repair1   "  ?id "  kA_marammawa_kara )" crlf))
)

;"repair","V","1.marammawa_karanA[vApasa_jA]"
(defrule repair2
(declare (salience 4800))
(id-root ?id repair)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id marammawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repair.clp 	repair2   "  ?id "  marammawa_kara )" crlf))
)

;"repair","VTI","1.marammawa_karanA"
;Please repair her table.
;--"2.kisI_jagaha_jAnA"
;He repaired in haste to Madras for his treatment.
;
