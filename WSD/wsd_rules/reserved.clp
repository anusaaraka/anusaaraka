;@@@ Added by Anita-5.4.2014--
;9 lakh 86 thousand passengers in the reserve category and 88 lakh 41 thousand passengers in the ;unreserved category have travelled this year in the month of October. [news]---parse -problem
;इस साल अक्टूबर में अब तक आरक्षित श्रेणी में 9 लाख 86 हजार और अनारक्षित श्रेणी में 88 लाख 41 हजार यात्रियों ने सफर किया है। 
(defrule reserved0
(declare (salience 5000))
(id-root ?id reserve)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 category)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ArakRiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reserved.clp 	reserved0   "  ?id " ArakRiwa )" crlf))
)
