;@@@ Added by Anita--28.2.2014
;I have made a rough draft of the letter. [Gyan-Nidhi]
;मैं पत्र का एक प्राथमिक प्रारूप बना चुका हूँ ।
(defrule rough2
(declare (salience 4800))
(id-root ?id rough)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ? ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAWamika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rough.clp 	rough2   "  ?id "  prAWamika )" crlf))
)

;------------------------Default rules ----------------------------------

(defrule rough0
(id-root ?id rough)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rough.clp 	rough0   "  ?id "   - )" crlf)))

(defrule rough1
(id-root ?id rough)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaTinAI_saha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rough.clp 	rough1   "  ?id "  kaTinAI_saha )" crlf))
)

;"rough","VT","1.kaTinAI_sahanA"
;You may have to rough it a little more if you come to stay in the hostel.
;
