

;Added by Meena(29.8.09)
;We watched the venus with a telescope.
(defrule venus0
(declare (salience 5000))
(id-root ?id venus)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id venus|Venus) ;( to account for "Venus" in case it occurs in this form) 
(kriyA-with_saMbanXI  ?id1 ?id2)
(id-root ?id2 telescope)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sukra_graha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  venus.clp    venus0   "  ?id "  Sukra_graha )" crlf))
)


;Added by Meena (29.8.09)
;Earlier, the evening star was called venus .
(defrule venus1
(declare (salience 5000))
(id-root ?id venus)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id venus|Venus)   
(id-root ?id1 star|planet)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sukra_graha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  venus.clp    venus1   "  ?id "  Sukra_graha )" crlf))
)

;Added by Meena(29.8.09)
;Venus was a major Roman goddess  associated with love and beauty .
(defrule venus2
(declare (salience 5000))
;(id-root ?id venus)
?mng <-(meaning_to_be_decided ?id)
;(id-word ?id venus|Venus)
(id-word ?id venus)
(subject-subject_samAnAXikaraNa  ?id ?id1)
;(id-root ?id1 goddess|Goddess)
(id-root ?id1 goddess)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rawi_devI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  venus.clp    venus2   "  ?id "  rawi_devI )" crlf))
)

