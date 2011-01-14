
(defrule apprentice0
(declare (salience 5000))
(id-root ?id apprentice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apareMtisa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  apprentice.clp 	apprentice0   "  ?id "  apareMtisa )" crlf))
)

;"apprentice","N","1.apareMtisa{SiRya}"
;After completing his Diploma in Pathology Mohan is now working as an apprentice in the Civil Hospital Laboratory.
;
(defrule apprentice1
(declare (salience 4900))
(id-root ?id apprentice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SiRya_bana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  apprentice.clp 	apprentice1   "  ?id "  SiRya_bana )" crlf))
)

;"apprentice","V","1.SiRya_bananA"
;I apprenticed for 2 years before becoming a mechanic.
;
