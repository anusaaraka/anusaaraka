;Added by Meena(19.11.09)
;It had only a tenth of the sun's mass but showed some wobbling which could be due to planets in its orbit .
(defrule wobbling0
(declare (salience 5000))
(id-root ?id wobble)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id wobbling)
(viSeRya-det_viSeRaNa ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asaMwulana))
;(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wobbling.clp    wobbling0   "  ?id " asaMwulana )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp    have49   "  ?id " kA )" crlf))
)
)
