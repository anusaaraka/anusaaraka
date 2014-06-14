
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
;@@@Added by Pramila(Banasthali University)
;She deals in gold.

;We only deal with companies which have a good credit record.         ;cald
;हम उन्ही कम्पनियों से व्यापार करते हैं जिनका पिछला अच्छा रिकार्ड रहा है.
(defrule deal2
(declare (salience 5000))
(id-root ?id deal)
?mng <-(meaning_to_be_decided ?id)
(or(id-word =(+ ?id 1) in) (and(kriyA-with_saMbanXI ?id ?id1)(id-root ?id1 company))) ;modified by Pramila(Banasthali University) on 18-11-2013
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyApAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deal.clp 	deal2   "  ?id "  vyApAra_kara )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 18-11-2013
;How long had she been dealing (= selling drugs)before she was arrested?            ;cald
;गिरफ्तारी से कितने समय से पहले से वह (ड्रग्स बेचने का) व्यापार कर रही थी .                  
(defrule deal3
(declare (salience 5000))
(id-root ?id deal)
?mng <-(meaning_to_be_decided ?id)
(kriyA-samakAlika_kriyA  ?id ?id1)
(id-root ?id1 arrest)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyApAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deal.clp 	deal3   "  ?id "  vyApAra_kara )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 18-11-2013                 
;He was suspected of dealing cocaine.             ;cald
;उस पर कोकीन बेचने का शक है.
(defrule deal4
(declare (salience 5000))
(id-root ?id deal)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 cocaine|drugs)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyApAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deal.clp 	deal4   "  ?id "  vyApAra_kara )" crlf))
)

;@@@ Added by Pramila(Banasthali University)
;This book deals with incest.
;Electrostatic deals with charges on glass rods.
;For example, the subject of thermodynamics, developed in the nineteenth century, deals with bulk systems in terms of macroscopic 
;quantities such as temperature, internal energy, entropy, etc.. 

;replaced the old condition of inanimate things with new format for inanimate things.
(defrule deal5
(declare (salience 4980))
(id-root ?id deal)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(id-root ?id1 ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id varNana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deal.clp 	deal5   "  ?id "  varNana_kara )" crlf))
)


;@@@ Added by Pramila(Banasthali University)
;This led to the development of a radically new theory (Quantum Mechanics) to deal with atomic and molecular phenomena.
;They have been taking measures to deal with instability in Europe for over a year.
;We have so far dealt with charge configurations involving discrete charges .
;अब तक हमने विविक्त आवेशों के आवेश विन्यास के विषय में विचार किया है .
(defrule deal6
(declare (salience 4970))
(id-root ?id deal)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-kriyArWa_kriyA  ?kri ?id)(kriyA-kqxanwa_karma  ?id ?id1))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vicAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deal.clp 	deal6   "  ?id "  vicAra_kara )" crlf))
)

;How are you going to deal with this problem ?
;isa samasyA se wuma kEse nipatoge ?

;The government must deal with this as a matter of urgency.
;sarakAra ko  isase ApaWasWiwi kI waraha nipatana CAhiye.

;@@@ Added by Pramila(Banasthali University) on 21-10-2013
(defrule deal7
(declare (salience 4970))
(id-root ?id deal)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?id ?id1)
(or(viSeRya-as_saMbanXI  ?id1 ?id2)(viSeRya-det_viSeRaNa  ?id1 ?id2))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nipata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deal.clp 	deal7   "  ?id "  nipata )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 18-11-2013
;Deal them five cards each.         ;cald
;हर एक को पांच  ताश के पत्ते बाँटना 
;Would you like to deal (out) the cards?                  ;cald
;क्या तुम ताश के पत्ते बाँटना पसंद करोंगे?
(defrule deal8
(declare (salience 5000))
(id-root ?id deal)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa  ?id ?id1)(kriyA-object  ?id ?id1))
(id-root ?id1 card)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAzta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deal.clp 	deal8   "  ?id "  bAzta )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 22-02-2014
;Whose turn is it to deal?                       ;cald
;ताश के पत्ते बांटने की किस की बारी है ?
(defrule deal9
(declare (salience 5000))
(id-root ?id deal)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkyakarma  ?id1 ?id)
(kriyA-subject  ?id1 ?id2)
(id-root ?id2 turn)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAzta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deal.clp 	deal9   "  ?id "  bAzta )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 22-02-2014
;Deal five cards to each of them.           ;cald
;हर एक को पांच  ताश के पत्ते बाँटना .
(defrule deal10
(declare (salience 5000))
(id-root ?id deal)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAzta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deal.clp 	deal10   "  ?id "  bAzta )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 18-11-2013
;He dealt me the Queen of Spades.                 ;thefreedictionary
;usane muJe hukuma kI begama xI.
(defrule deal11
(declare (salience 5000))
(id-root ?id deal)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kqxanwa_karma  ?id ?id1)
(id-root ?id1 queen|jack|king|ace)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deal.clp 	deal11   "  ?id "  xe )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 18-11-2013
;The latest trade figures have dealt a severe blow to hopes of an early economic recovery.           ;cald
;ताजे (नये ) व्यापार के अंकों ने जल्दी आर्थिक सुधार की आशाओं को बड़ा धक्का लगा दिया.
(defrule deal12
(declare (salience 5000))
(id-root ?id deal)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 blow)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deal.clp 	deal12   "  ?id "  lagA_xe )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 22-02-2014
; Rather it deals with systems in macroscopic equilibrium and is concerned with changes in internal energy temperature entropy etc. of 
;the system through external work and transfer of heat.     ;ncert
;अपितु यह स्थूल सन्तुलन के निकायों पर विचार करती है, तथा इसका सम्बन्ध बाह्य कार्य तथा ऊष्मा स्थानान्तरण द्वारा निकाय की आन्तरिक ऊर्जा, ताप, ऐन्ट्रॉपी आदि में अन्तर से होता है.
(defrule deal13
(declare (salience 5000))
(id-root ?id deal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI  ?id ?id1)
(viSeRya-in_saMbanXI  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vicAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deal.clp 	deal13   "  ?id "  vicAra_kara )" crlf))
)


;@@@ Added by Pramila(BU) on 12-03-2014
;Presently we are dealing with motion along a straight line also called rectilinear motion only.    ;ncert
;इस अध्याय में हम एक सरल रेखा के अनुदिश सरल गति (जिसे हम रेखीय गति कहते हैं) के विषय में ही अध्ययन करेंगे ..
(defrule deal14
(declare (salience 5000))
(id-root ?id deal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(kriyA-with_saMbanXI  ?id ?id2)
(id-root ?id2 ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXyayana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deal.clp 	deal14   "  ?id "  aXyayana_kara )" crlf))
)
