
(defrule defeat0
(declare (salience 5000))
(id-root ?id defeat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  defeat.clp 	defeat0   "  ?id "  hAra )" crlf))
)

;"defeat","N","1.hAra"
;Defeat should not be the way of life.
;
(defrule defeat1
(declare (salience 4900))
(id-root ?id defeat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id harA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  defeat.clp 	defeat1   "  ?id "  harA )" crlf))
)

;"defeat","V","1.harAnA"
;They brought a defeat to his country by playing badly in the match.
;--"2.viPala_kara_xenA"
;He tried to convince him, but he defeated him.
;
;LEVEL 
;Headword : defeat
;
;Examples --
;
;"defeat","V","1.parAjiwa_honA[karanA]"
;He defeated the champion by a good margin.
;usane cEmpiyana KilAdZI ko eka acCI mArjIna se parAjiwa kare xiyA.
;You defeat your own purpose by not working for it hard enough.
;kaTina pariSrama na kara ke wuma apane hI lakRya ko parAjiwa kara rahe ho.
;
;--"2.samaJa_meM_na_AnA"
;It defeats me why you make the same mistake again && again.
;muJe samaJa meM nahIM AwA ki wuma vahI galawI bArabAra kyoM karawe ho.
;
;"defeat","N","1.parAjaya"
;He could not take his defeat in a sportive way.
;vaha apanI parAjaya ko krIdZABAva ke sAWa na le sakA.
;
;sUwra : parAjiwa_honA1[>parAjaya]
