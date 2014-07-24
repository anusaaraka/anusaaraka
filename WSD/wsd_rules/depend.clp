
;Added by Pramila(Banasthali University) on 19-11-2013
;I'm depending on you to keep your promise.             ;cald
;मैं तुम पर भरोसा कर रहा हूँ कि अपना वायदा पूरा करोंगे.
;You can't always depend on the trains arriving on time.              ;cald
;तुम ट्रेनों का समय पर आने का भरोसा नहीं कर सकते .
(defrule depend0
(declare (salience 4900))
(id-root ?id depend)
?mng <-(meaning_to_be_decided ?id)
(or(and(kriyA-on_saMbanXI  ?id ?id1)(viSeRya-kqxanwa_viSeRaNa  ?id1 ?id2))(kriyA-kriyArWa_kriyA  ?id ?id1)(kriyA-in_saMbanXI  ?id ?id1))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarosA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  depend.clp 	depend0   "  ?id "  BarosA_kara )" crlf))
)

;Added by Pramila(Banasthali University) on 19-11-2013
;Charities depend on people supporting their activities.                ;cald
;अनुदान लोगों की मदद पर निर्भर करता है.
(defrule depend1
(declare (salience 5000))
(id-root ?id depend)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "inanimate.gdbm" ?str)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirBara_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  depend.clp 	depend1   "  ?id "  nirBara_kara )"
 crlf))
)






;-------------------------------------default rules---------------------------------------------
(defrule depend2
(declare (salience 4000))
(id-root ?id depend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirBara_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  depend.clp 	depend2   "  ?id "  nirBara_kara )" crlf))
)

;"depend","V","1.nirBara_kara"
(defrule depend3
(declare (salience 3000))
(id-root ?id depend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarosA_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  depend.clp 	depend3   "  ?id "  BarosA_raKa )" crlf))
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
