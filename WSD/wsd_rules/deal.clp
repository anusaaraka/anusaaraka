
(defrule deal0
(declare (salience 5000))
(id-root ?id deal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deal.clp 	deal0   "  ?id "  dIla )" crlf))
)

;"deal","N","1.dIla"
;It was a package deal
;He got a good deal on his car
;The deal was passed around the table clockwise
;The captain was entrusted with the deal of provisions
;
(defrule deal1
(declare (salience 4900))
(id-root ?id deal)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)));Added by Pramila 11-08-2013 (Banasthali University)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyavahAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deal.clp 	deal1   "  ?id "  vyavahAra_kara )" crlf))
)

;"deal","VTI","1.vyavahAra_karanA"
;He deals fairly with his employees
;--"2.varNana_karanA"
;This book deals with incest
;--"3.sAmanA_karanA"
;I can deal with this crew of workers
;How are we going to deal with this problem?
;--"4.vyApAra_karanA/"
;She deals in gold
;Who's dealing?
;--"5.calAnA"
;He dealt me the Queen of Spades
;LEVEL 
;Headword : deal
;
;Examples --
;
;"deal","N","1.sOxA/dIla"
;It was a package deal
;yaha pEkeja sOxA WA.
;He got a good deal on his car
;usakI kAra kA acCA sOxA ho gayA.
;The captain was entrusted with the deal of provisions
;kapwAna ko sAmAna kA sOxA karane kI jZimmevArI xI gayI.
;--"2.pawwa_bAztanA"
;The deal was passed around the table clockwise
;mejZa para pawwe klOYkavAijZa xiye gaye.
;
;"deal","VTI","1.vyavahAra_karanA"
;He deals fairly with his employees
;vaha apane karmacAriyoM se nyAyapUrNa vyavahAra karawA hE.
;--"2.varNana_karanA"
;This book deals with salient grammatical features of English.
;yaha puswaka aMgrejZI vyAkaraNa ke viSiRtawAoM kA varNana karawI hE. 
;--"3.nipatanA"
;I can deal with this crew of workers.
;mEM kAma karane vAle isa samUha se nipata sakawA hUz.
;How are we going to deal with this problem?
;isa samasyA se hama kEse nipateMge. 
;--"4.vyApAra_karanA"
;She deals in gold.
;vaha sone kA vyApAra karawI hE.
;--"5.pawwe_bAtanA"
;Who's dealing?
;pawwe kOna bAzta rahA hE.
;--"6.calAnA"
;He dealt me the Queen of Spades
;usane muJe hukuma kI begama xI.
;
;'deal' Sabxa kA mUla arWa 'xene_lene' se sambanXiwa hE. isake viswqwa arWa meM 'lenA_xenA'(sOxA), 'mAwra_xenA'(wASa ke_pawwe xenA -- hAzlAki usameM BI kuCa sImA waka 'lena_xena' howA hE). arWa viswAra hone para jisa vaswu kA lena xena howA hE vaha BI SAmila ho gayI(wASa_ke_pawwe). awaH isakA arWa 'sOxe' Ora 'viwaraNa' meM simata jAwA hE. 
;
;anwarnihiwa sUwra ;
;
;{lena-xena}-{xenA_binA_liye}viwariwa_hissA
;
;sUwra : sOxA^viwaraNa
;
;
;Added by Pramila(Banasthali University)
;She deals in gold.

(defrule deal2
(declare (salience 4980))
(id-root ?id deal)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) in)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyApAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deal.clp 	deal2   "  ?id "  vyApAra_kara )" crlf))
)

;Added by Pramila(Banasthali University)
;This book deals with incest.
;Electrostatics deals with charges on glass rods.
;For example, the subject of thermodynamics, developed in the nineteenth century, deals with bulk systems in terms of macroscopic quantities such as temperature, internal energy, entropy, etc.. 
(defrule deal3
(declare (salience 4970))
(id-root ?id deal)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "inanimate.gdbm" ?str)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id varNana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deal.clp 	deal3   "  ?id "  varNana_kara )" crlf))
)


;Added by Pramila(Banasthali University)
;This led to the development of a radically new theory (Quantum Mechanics) to deal with atomic and molecular phenomena.
;They have been taking measures to deal with instability in Europe for over a year.
(defrule deal4
(declare (salience 4970))
(id-root ?id deal)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?kri ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vicAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deal.clp 	deal4   "  ?id "  vicAra_kara )" crlf))
)

