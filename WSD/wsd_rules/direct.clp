
(defrule direct0
(declare (salience 5000))
(id-root ?id direct)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIXA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  direct.clp 	direct0   "  ?id "  sIXA )" crlf))
)
;"direct","Adj","1.sIXA"
;He asked a direct question relating to her personal life.
;

;For a positive charge, the electric field will be directed radially outwards from the charge.
;धनावेश के कारण विद्युत क्षेत्र आवेश से बाहर की ओर उन्मुख त्रिज्यीय होता है.
;The building directed towards the east.
;imArawa pUrva kI ora unmuKa hE.

;Added by Pramila(Banasthali University)
(defrule direct1
(declare (salience 4950))
(id-root ?id direct)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "inanimate.gdbm" ?str)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id unmuKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  direct.clp 	direct1   "  ?id "  unmuKa )" crlf))
)



;The guide directed our attention to another sculpture.
;gAida ne eka ora mUrwi kI ora hamArA XyAna AkarRiwa kiyA.

;Added by Pramila(Banasthali University)
(defrule direct2
(declare (salience 5000))
(id-root ?id direct)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(id-root ?id1 attention)
(kriyA-to_saMbanXI  ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AkarRiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  direct.clp 	direct3   "  ?id "  AkarRiwa_kara )" crlf))
)

;Mohan's remarks were directed at Reeta.
;mohana ke vAkya rIwA ko lakRiwa kara rahe We.

;Added by Pramila(Banasthali University)
(defrule direct3
(declare (salience 4950))
(id-root ?id direct)
?mng <-(meaning_to_be_decided ?id)
(kriyA-at_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lakRiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  direct.clp 	direct4   "  ?id "  lakRiwa_kara )" crlf))
)

(defrule direct5
(declare (salience 5000))
(id-root ?id direct)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(viSeRya-jo_samAnAXikaraNa  ?id1 ?id2)
(id-root ?id2 law|theory)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawyakRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  direct.clp 	direct5   "  ?id "  prawyakRa )" crlf))
)

;@@@ added by Pramila(BU) on 12-12-2013
;They pumped the sprayer-levers up and down, directing the chemical jet on to the ground.    ;gyannidhi
;वे स्प्रेयर के लीवर को ऊपर नीचे खींचते और उससे रसायन की फुहार जमीन पर डालते जाते थे।
(defrule direct6
(declare (salience 5000))
(id-root ?id direct)
?mng <-(meaning_to_be_decided ?id)
(kriyA-on_to_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAlawe_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  direct.clp 	direct6   "  ?id "  dAlawe_jA )" crlf))
)


;---------------------default rules--------------------------------------

(defrule direct7
(declare (salience 4000))
(id-root ?id direct)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paWa_xiKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  direct.clp 	direct7   "  ?id "  paWa_xiKA )" crlf))
)
;"direct","VT","1.paWa_xiKAnA"
;I directed them towards the town hall.
;
;LEVEL 
;Headword : direct
;
;Examples --
;
;"direct","Adj","1.sIXA"
;There is a direct train from here to Ahamadabad.
;yahAz se ahamaxAbAxa ke liye eka sIXI gAdZI hE.
;The office has a direct link to the weather sattelite.
;APisa kA mOsama ke sEtelAita se sIXA liMka hE.
;The direct consequences of his actions are not yet known.
;usakI karawUwoM ke sIXE pariNAma aBI mAlUma nahIM hEM.
;His absence has a direct bearing to the case.
;usake na Ane kA sIXA sambanXa isa kesa se hE.
;--"2.spaRta"
;She has a direct manner of talking.
;usakA bAwa karane kA warIkA bahuwa spaRta hE.<---binA xurAva-CipAva ke <--binA iXara-uXara GumAe bAwa ko sIXe warIke se kahanA<--sIXA
;
;"direct","Adv","1.sIXA"
;This train goes direct.
;yaha trena sIXe jAwe hEM.
;
;"direct","V","1.mArga_xiKAnA"
;He directed the group of workers to the site.
;usane kAma karanevAloM ko kAma kI jagaha kA mArga xiKAyA. <--mArga kI ora nirxiRta karanA<--sIXA rAswA bawAnA
;--"2.XyAna_xilAnA"
;The guide directed our attention to another sculpture.
;gAida ne eka ora mUrwi kI ora hamArA XyAna AkarRiwa kiyA.<--XyAna ko xiSA xenA<--mArga xiKAnA 
;--"3.nirxeSana_karanA"
;Raman directed this film.
;isa Pilma kA nirxeSana ramana ne kiyA hE.<--kAma karane vAloM ko kAma karane kI xiSA xiKAnA<--kAma karane kA sIXA mArga xiKAnA
;--"4.ko_lakRya_karanA"
;Mohan's remarks were directed at Reeta.
;mohana ke vAkya rIwA ko lakRya kara rahe We.<--vakwavyoM ko xiSA xenA 
;
;
;Upara xiye saBI uxAharaNoM se 'direct' kA bIjArWa 'sIXA' jAna padZawA hE. awaH viSeRaNa Ora kriyAviSeRaNa prayogoM meM isakA arWa 'sIXA' hI banA rahawA hE. kriyA prayoga meM Awe-Awe arWa meM WodZA modZa A jAwA hE kinwu Pira BI usameM 'lakRya' se sIXe judZe rahane kA BAva samAhiwa rahawA hE. awaH isakA anwarnihiwa sUwra hogA ;
;
;anwarnihiwa sUwra ;
;
;sIXA--sIXI reKA --sIXA mArga --mArga kI xiSA --xiSA nirxeSa --mArga xiKAnA
;
;sUwra : sIXA`[>mArga_xiKAnA]
