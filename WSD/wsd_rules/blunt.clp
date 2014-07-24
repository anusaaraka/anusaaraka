
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 05-03-2014
;She has a reputation for blunt speaking.[oald]
;वह स्पष्ट बोलने के लिए जानी जाती है 
(defrule blunt2
(declare (salience 3000))
(id-root ?id blunt)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-word ?id1 speaking)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id spaRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blunt.clp 	blunt2   "  ?id "  spaRta )" crlf))
)

;****************************DEFAULT RULES*************************


;note: commented rule 'blunt0' as it was similar to rule 'blunt1' . Meaning 'sAPa' was different but the condition was same so the rule will never get fired. 

(defrule blunt1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id blunt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BOMWarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blunt.clp 	blunt1   "  ?id "  BOMWarA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 05-03-2014
;Age hadn't blunted his passion for adventure.[oald]
;उम्र ने उसके साहसिक कार्य करने के जुनून को कम नहीं किया
(defrule blunt0
(declare (salience 0))
(id-root ?id blunt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blunt.clp 	blunt0   "  ?id "  kama_kara )" crlf))
)
;"blunt","Adj","1.BOMWarA"
;Lot of writing blunts a pencil.
;--"2.muzhaPata"
;We shouldn't be blunt in our speech.
;
;

;**************************EXAMPLES***************************

;She has a reputation for blunt speaking.
;To be blunt, your work is appalling.
;A blunt knife.
;This pencil's blunt!
;The police said he had been hit with a blunt instrument.
;Age hadn't blunted his passion for adventure.

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_blunt2
(declare (salience 3000))
(id-root ?id blunt)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 speaking)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id spaRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " blunt.clp   sub_samA_blunt2   "   ?id " spaRta )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_blunt2
(declare (salience 3000))
(id-root ?id blunt)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 speaking)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id spaRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " blunt.clp   obj_samA_blunt2   "   ?id " spaRta )" crlf))
)
