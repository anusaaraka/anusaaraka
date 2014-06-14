
(defrule cement0
(declare (salience 5000))
(id-root ?id cement)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id simeMta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cement.clp 	cement0   "  ?id "  simeMta )" crlf))
)

(defrule cement1
;(declare (salience 4900));salience changed
(id-root ?id cement)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cement.clp 	cement1   "  ?id "  jodZa )" crlf))
)

;@@@ Added by Preeti(17-4-14)
;It was that day that really cemented our friendship. [Cambridge Learner’s Dictionary]
;yaha vaha xina WA jisane vAswava meM hamArI mEwrI majabUwa kI.
(defrule cement2
(declare (salience 1000))
(id-root ?id cement)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 friendship|alliance|agreement|relationship)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id majabUwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cement.clp 	cement2   "  ?id "  majabUwa_kara )" crlf))
)


;"cement","VT","1.jodZanA"
;We cemented our friendship with trust.
;
;
