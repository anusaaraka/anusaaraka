;Added by Meena(19.11.09)
;It had only a tenth of the sun's mass but showed some wobbling which could be due to planets in its orbit .
(defrule orbit0
(declare (salience 5000))
(id-root ?id orbit)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-det_viSeRaNa ?id ?id1)(viSeRya-RaRTI_viSeRaNa ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kakRa))
;(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  orbit.clp    orbit0   "  ?id " kakRa )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp    have49   "  ?id " kA )" crlf))
)
)

