;Added by sheetal(23-01-10)
(defrule cruel0
(declare (salience 5000))
(id-root ?id cruel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(id-root ?sub ?str&:(not (gdbm_lookup_p "animate.gdbm" ?str)))
(subject-subject_samAnAXikaraNa  ?sub ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gawaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cruel.clp     cruel0   "  ?id "  Gawaka )" crlf))
)
;Teasing can be very cruel . 
