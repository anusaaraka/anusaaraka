
(defrule depend0
(declare (salience 5000))
(id-root ?id depend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirBara_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  depend.clp 	depend0   "  ?id "  nirBara_kara )" crlf))
)

;"depend","V","1.nirBara_kara"
(defrule depend1
(declare (salience 4900))
(id-root ?id depend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarosA_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  depend.clp 	depend1   "  ?id "  BarosA_raKa )" crlf))
)

;"depend","VT","1.BarosA_raKanA"
;I can't depend on you any more.
;--"2.ASriwa_honA"
;Women should not depend on their husbands for their needs.
;
;LEVEL 
;Headword : depend
;
;Examples --
;
;"depend","VT","1.nirBara_karanA"
;Women should not depend on their husbands for their monetary needs.
;apanI ArWika jZarUrawoM ke liye swriyoM ko apane pawiyoM para nirBara nahIM karanA cAhiye.
;--"2. BarosA_raKanA"
;I can't depend on you any more.
;mEM aba wumhAre Upara BarosA nahIM kara sakawA. <--BarosA_karanA <--nirBara_honA
;Don't depend on the bus leaving on time.
;basa ke samaya para calane para BarosA mawa raKo. <---Basa ke samaya para calane para nirBara nahIM raho.
;
;sUwra : nirBara_honA` 
