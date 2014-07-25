
(defrule deform0
(declare (salience 5000))
(id-root ?id deform)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id deformed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vikqwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  deform.clp  	deform0   "  ?id "  vikqwa )" crlf))
)


;"deformed","Adj","1.vikqwa"
;He has a deformed leg by birth.
;

;$$$ Modified by Pramila(BU) on 24-02-2014
(defrule deform1
(declare (salience 4900))
(id-root ?id deform)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-after_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vikqwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deform.clp 	deform1   "  ?id "  vikqwa_ho )" crlf))
)

;"deform","V","1.vikqwa honA"
;The structure was deformed badly after the earthquake.
;
;

;@@@ Added by Pramila(Banasthali University) on 24-02-2014
;In our experience force is needed to push carry or throw objects deform or break them.
;हम सभी का यह अनुभव है कि वस्तुओं को धकेलने, ले जाने अथवा फेङ्कने, विकृत करने अथवा उन्हें तोडने के लिए बल की आवश्यकता होती है.
(defrule deform2
(declare (salience 100))
(id-root ?id deform)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vikqwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deform.clp 	deform2   "  ?id "  vikqwa_kara )" crlf))
)
