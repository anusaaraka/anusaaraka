
(defrule operative0
(declare (salience 5000))
(id-root ?id operative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kriyAwmaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  operative.clp 	operative0   "  ?id "  kriyAwmaka )" crlf))
)

;"operative","Adj","1.kriyAwmaka"
;This rule will become operative from next year.
;
(defrule operative1
(declare (salience 4900))
(id-root ?id operative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kArIgara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  operative.clp 	operative1   "  ?id "  kArIgara )" crlf))
)

;"operative","N","1.kArIgara"
;He is an operative && sincere in the factory.
;


;@@@ Added by Sonam Gupta MTech IT Banasthali 7-2-2014
;This was carried out by legislation which became operative on April 27 1921. [gyannidhi]
;यह कार्य एक कानून के अंतर्गत संपन्न हुआ जो 27 अप्रैल, 1921 को लागू किया गया।
;The agreement will not become operative until all members have signed. [Cambridge]
;समझौता लागू नहीं होगा जब तक सभी सदस्य हस्ताक्षर नहीं करेंगे .
(defrule operative2
(declare (salience 5400))
(id-root ?id operative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-on_saMbanXI  ?id ?)(and(subject-subject_samAnAXikaraNa  ?noun ?id)(kriyA-subject  ? ?noun)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAgU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  operative.clp 	operative2   "  ?id "  lAgU )" crlf))
)

