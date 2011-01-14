;Added by Meena(18.11.09)
;It had only a tenth of the sun's mass but showed some wobbling which could be due to planets in its orbit . 
(defrule mass0
(declare (salience 5000))
(id-root ?id mass)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-RaRTI_viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xravyamAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mass.clp      mass0   "  ?id "  xravyamAna )" crlf))
)



;Salience reduced by Meena(18.11.09)
(defrule mass1
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id mass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parimANa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mass.clp 	mass1   "  ?id "  parimANa )" crlf))
)

;"mass","N","1.parimANa"
;There was masses of dark clouds in the sky.
;--"2.samUha"
;There were masses of people at the funeral.
;--"3.krIswa_yAga"
;You should go to the mass.
;
(defrule mass2
(declare (salience 4900))
(id-root ?id mass)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekawra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mass.clp 	mass2   "  ?id "  ekawra_kara )" crlf))
)

(defrule mass3
(declare (salience 4800))
(id-root ?id mass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekawra_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mass.clp 	mass3   "  ?id "  ekawra_ho )" crlf))
)

;"mass","V","1.ekawra_honA[karanA]"
;The general massed his troops for final attack.
;
