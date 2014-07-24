;@@@ Added by Roja(22-04-14). Suggested by Chaitanya Sir.
;The book has a beautiful getup.
;इस पुस्तक की बाह्य सजावट सुन्दर है
(defrule getup0
(id-root ?id getup)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?id)
(kriyA-subject  ?kri ?subj)
(id-root ?subj ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  bAhya_sajAvata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " getup.clp   getup0  "  ?id "  bAhya_sajAvata )" crlf))
)


;@@@ Added by Roja(22-04-14). Suggested by Chaitanya Sir.
;He was in a weird getup with a red wig.
;vaha eka axBuwa pahanAve meM WA.
(defrule getup1
(id-root ?id getup)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?kri ?subj)
(kriyA-in_saMbanXI  ?kri  ?id)
(id-root ?subj ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  pahanAvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " getup.clp   getup1  "  ?id "  pahanAvA)" crlf))
)
