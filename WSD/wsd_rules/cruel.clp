;@@@ Added by Preeti(6-12-13)
;Her father's death was a cruel blow. 
;usake piwA kI mqwyu eka nirxayI XakkA WA.
(defrule cruel0
;(declare (salience 5000))
;(id-root ?id cruel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirxayI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cruel.clp     cruel0   "  ?id "  nirxayI )" crlf))
)

;$$$  Modified by Preeti(7-12-13)
;Her eyes were cruel and hard. [ Oxford Advanced Learner's Dictionary]
;usakI AzKeM BayAnaka Ora niRTura WIM.
(defrule cruel1
(declare (salience 5050))
(id-root ?id cruel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa  ?sub ?id)
(id-root ?sub eye)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BayAnaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cruel.clp     cruel1   "  ?id "  BayAnaka )" crlf))
)
;################### Additional Examples ####################
;Many people think hunting is cruel to animals.
;bahuwa se loga socawe hEM ki paSuoM kA SikAra karanA  nirxayawA hE./bahuwa se loga socawe hEM ki SikAra karanA paSuoM ke sAWa nirxayawA hE.
;---------
;Added by sheetal(23-01-10)
;(defrule cruel0
;(declare (salience 5000))
;(id-root ?id cruel)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id adjective)
;(id-root ?sub ?str&:(not (gdbm_lookup_p "animate.gdbm" ?str)))
;(subject-subject_samAnAXikaraNa  ?sub ?id)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id Gawaka))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cruel.clp     ;cruel0   "  ?id "  Gawaka )" crlf))
;)
;Teasing can be very cruel . 
