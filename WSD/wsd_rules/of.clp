
(defrule of0
(declare (salience 5000))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) because)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kI_vajaha_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of0   "  ?id "  kI_vajaha_se )" crlf))
)

(defrule of1
(declare (salience 4900))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) out)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_bAhara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of1   "  ?id "  ke_bAhara )" crlf))
)

(defrule of2
(declare (salience 4800))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) accept|acknowledge|add|admit|agree|allege|announce|answer|argue|arrange|assert|assume|assure|believe|boast|check|claim|comment|complain|concede|conclude|confirm|consider|contend|convince|decide|demonstrate|deny|determine|discover|dispute|doubt|dream|elicit|ensure|estimate|expect|explain|fear|feel|figure|find|foresee|forget|gather|guarantee|guess|hear|hold|hope|imagine|imply|indicate|inform|insist|judge|know|learn|maintain|mean|mention|note|notice|notify|object|observe|perceive|persuade|pledge|pray|predict|pretend|promise|prophesy|prove|read|realize|reason|reassure|recall|reckon|record|reflect|remark|remember|repeat|reply|report|require|resolve|reveal|say|see|sense|show|state|suggest|suppose|swear|teach|tell|think|threaten|understand|vow|warn|wish|worry|write)
(id-word =(+ ?id 1) what|when|where|why|how|who)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id isa_kA_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of2   "  ?id "  isa_kA_ki )" crlf))
)

(defrule of3
(declare (salience 4700))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) inform|remind)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_bAre_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of3   "  ?id "  ke_bAre_meM )" crlf))
)

;We can still inform the public of the value of silence.
(defrule of4
(declare (salience 4600))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) what|when|where|why|how|who)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id usa_kA_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of4   "  ?id "  usa_kA_ki )" crlf))
)

(defrule of5
(declare (salience 4500))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) whom|her) ; her is added in the word by sukhada for the sentence Of her childhood we know very little.
(not (id-word =(- ?id 1) both|use)) ;Both of her parents are from India.
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_bAre_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of5   "  ?id "  ke_bAre_meM )" crlf))
)

;Of whom do you speak?
(defrule of6
(declare (salience 4400))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) hers)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of6   "  ?id "  - )" crlf))
)

(defrule of7
(declare (salience 4300))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) cup|bag|bottle|glass|box)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kA))
;(assert (id-wsd_root_mng ?id Bara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of7   "  ?id "  kA )" crlf))
)

(defrule of8
(declare (salience 4200))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) majority|plenty|best|all|some|both|many|none|few|much|hundreds|thousands|kilos|liters)
(id-word =(+ ?id 1) them)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of8   "  ?id "  meM_se )" crlf))
)

(defrule of9
(declare (salience 4100))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) majority|plenty|best|all|some|both|many|none|few|much|hundreds|thousands|kilos|liters)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of9   "  ?id "  - )" crlf))
)

(defrule of10
(declare (salience 4000))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) full)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of10   "  ?id "  se )" crlf))
)

;It is full of advertisemnets.
(defrule of11
(declare (salience 3900))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) ahead)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of11   "  ?id "  se )" crlf))
)

;He is ahead of you
(defrule of12
(declare (salience 3800))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) fond)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of12   "  ?id "  kA )" crlf))
)

;He is fond of sweets.
(defrule of13
(declare (salience 3700))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) proud)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of13   "  ?id "para )" crlf))
)

;We are proud of your achievements
(defrule of14
(declare (salience 3600))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) kind )
(id-word =(+ ?id 1) you)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of14   "  ?id "  kA )" crlf))
)

(defrule of15
(declare (salience 3500))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) kinds|types)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of15   "  ?id "  kA )" crlf))
)

(defrule of16
(declare (salience 3400))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) kind|type|clever|unwise)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of16   "  ?id "  kA )" crlf))
)

(defrule of17
(declare (salience 3300))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) millions|hundreds|thousands|tens|crores|lakhs|billions|million|billion)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of17   "  ?id "  - )" crlf))
)

;It is made up of millions of cells.
(defrule of18
(declare (salience 3200))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) one|two|three|some|none|more)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of18   "  ?id "  meM_se )" crlf))
)

(defrule of19
(declare (salience 3100))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) integer|whole number|number)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of19   "  ?id "  meM_se )" crlf))
)

(defrule of20
(declare (salience 3000))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) all )
(id-word =(+ ?id 1) all)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of20   "  ?id "  - )" crlf))
)

(defrule of21
(declare (salience 2900))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) aware|afraid)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of21   "  ?id "  se )" crlf))
)

;from_list(previous_word,pron_of_meM_se.dat)	meM_se	0
;One of those, etc.
(defrule of22
(declare (salience 2800))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) friend )
(id-word =(+ ?id 1) mine)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of22   "  ?id "  meM_se )" crlf))
)

(defrule of23
(declare (salience 2700))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) mine)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of23   "  ?id "  - )" crlf))
)

(defrule of24
(declare (salience 2600))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) talk|hear|think|complain)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_bAre_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of24   "  ?id "  ke_bAre_meM )" crlf))
)

(defrule of25
(declare (salience 2500))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) relieve|die|relieved|died|made|consist|frighten|beg|clear|empty|drain|deprive|cheat)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of25   "  ?id "  se )" crlf))
)

(defrule of26
(declare (salience 2400))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) make)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of26   "  ?id "  kA )" crlf))
)

(defrule of27
(declare (salience 2300))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) fool|idiot)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of27   "  ?id "  - )" crlf))
)

(defrule of28
(declare (salience 2200))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) kilo|kilos|meters|meter)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of28   "  ?id "  - )" crlf))
)

(defrule of29
(declare (salience 2100))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) all)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of29   "  ?id "  meM_se )" crlf))
)

(defrule of30
(declare (salience 2000))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) a|an|the)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of30   "  ?id "  kA )" crlf))
)

(defrule of31
(declare (salience 1900))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) which)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of31   "  ?id "  meM_se )" crlf))
)

(defrule of32
(declare (salience 1800))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) all)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of32   "  ?id "  meM_se )" crlf))
)

(defrule of33
(declare (salience 1700))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) which)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of33   "  ?id "  se )" crlf))
)



;Added by Meena(17.9.09)
;Would you like a cup of tea.
(defrule of34
(declare (salience 4600))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id2 tea|coffee|milk)
(viSeRya-of_saMbanXI ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp        of34   "  ?id "  - )" crlf))
)




(defrule of35
(declare (salience 1600))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp 	of35   "  ?id "  kA )" crlf))
)

(defrule sh-of0
(declare (salience 5000))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
(id-root =(- ?id 1) invite)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp        sh-of0   "  ?id "  ko )" crlf))
)
;I should have talked to you before the inviting of John .
 




;Added by Meena(2.3.10)
;She said she did not approve of my behavior .
(defrule approve_of0
(declare (salience 5000))
(id-root ?id of)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) approve)
(kriyA-of_saMbanXI  =(- ?id 1) ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  of.clp        approve_of0   "  ?id "  ko )" crlf))
)

;LEVEL 
;Headword : of
;
;Examples --
;
;--"1.kA"
;
;Jungles of India are dense.
;jaMgala of BArawa hEM GanA
;BArawa ke jaMgala Gane hEM.                   Jungles of India
;                                           N1   of  N2 =>
;                                           N2   kA  N1 
;
;Open the first page of the book.
;Kolie the pahalA pqRTa of the kiwAba 
;kiwAba kA pahalA pqRTa Koliye.            the first page of the book
;                                      [the first page] of [the book]
;                                      [the pahalA pqRTa]  of [the kiwAba]
;				            NP1         of   NP2 =>
;                                            NP2         kA   NP1
;
;Open the lid of the box.
;Kolie the Dakkana of the dibbA
;dibbe kA Dakkana Kolo
;
;The role of a teacher is to guide a student towards knowledge.
;the BUmikA of a aXyApaka hE to mArga_xiKAnA a vixyArWI towards jFAna.
;aXyApaka kI BUmikA vixyArWI ko jFAna kA mArga xiKAnA hE.
;
;The inhabitants of the area are put under a lot of inconvenience.
;the  nivAsI of the kRewra hEM raKe under a bahuwa of asuviXA
;kRewra ke nivAsiyoM ke liye bahuwa asuviXA ho gayI hE.
;
;All the novels of Premchand are in the library.
;saba the upanyAsa of premacaMxa hEM in the puswakAlaya
;premacaMxa ke saBI upanyAsa puswakAlaya meM hEM.
;
;I bought a new cassette of songs of Lata Mangeshkar.
;mEM KarIxA a nayA kEseta of gAnA of lawA maMgeSakara.
;mEMne lawA maMgeSakara ke gAnoM kA eka nayA kEseta KarIxA.
;
;The book contains stories of crime.
;the puswaka yukwa_hE kahAniyAz of aparAXa.
;puswaka meM aparAXa kI kahAniyAz hEM.
;
;She was wearing a sari of gold zari.
;vaha{swrI.} WI pahane_hue a sAdZI of sunaharI jZarI.
;vaha sunaharI jZarI kI sAdZI pahane WI.
;
;A rupee can buy three sheets of paper.
;a rupayA KarIxa_sakawA_hE wIna panne of kAgajZa
;eka rupaye meM kAgajZa ke wIna panne KarIxe jA sakawe hEM.
;
;In these parts of the country it rains for six months of the year.
;in ye     ilAke of the xeSa vaha` barasawA_hE for CaH mahIne of the varRa.
;xeSa ke isa ilAke meM sAla ke CaH mahIne pAnI barasawA hE.
;xeSa ke isa ilAke meM sAla meM CaH mahIne pAnI barasawA hE.
;
;Ram accused Mohan of stealing his book
;rAma{0/ne} xoRa_lagAyA mohana{para} kA curAnA usakA-kiwAba (patient)
;rAma ne mohana para apanI kiwAba curAne kA xoRa lagAyA
;
;I have often dreamed of going to far off places
;mEM hE    aksara sapanA_xeKA of jAnA to xUra-xarAjZa sWAna
;mEM aksara xUra xarAjZa sWAnoM para jAne kA sapanA xeKA karawA WA.
;                                      
;--"2.se"
;Hari died of cancer  (kAraNa)
;hari marA   of kEnsara 
;hari kEnsara se marA.
;
;Ram is afraid of heights.
;rAma hE  darA   of UzcAI  (kAraNa)
;rAma UzcI jagahoM se darawA hE.
;
;--"3.meM_se"
;I know some of the people.   'Det/quantifier of det N'  
;mEM jAnawA_hUz kuCa of the loga
;mEM logoM meM se kuCa ko jAnawA hUz.  
;mEM kuCa logoM ko jAnawA hUz
;
;Two of the children came late.
;xo of the bacce Aye xera_se.
;baccoM meM se xo xera se Aye. 
;xo bacce xera se Aye.
;
;Most of the shops are closed today.
;jyAxAwara of the xukAneM hEM banxa_huyI Aja
;xukAne meM se jyAxAwara Aja banxa hEM.
;jyAxAwara xukAne Aja banxa hEM. 
;
;I bought six of the green apples.
;mEM KarIxA CaH of the harA seba.
;hare seboM meM se CaH mEMne KarIxe.
;mEMne CaH hare seba KarIxe.
;
;Which of your books is with me.
;kOna_sA[jo`] of wumhArI kawAbeM hE with mEM.
;wumhArI kiwAboM meM se kOna sI mere pAsa hE.
;wumhArI kOna se kiwAba mere pAsa hE.
;
;Neither    of these tables will do.
;nahIM_koI{xo_meM} of ina mejoM calegI.
;ina xono mejZoM meM se koI nahIM calegI.
;ye xonoM mejeM nahIM caleMgI.
;
;--"4.0"
;Buy two kilos of potatoes.
;KarIxiye xo kilo of AlU{ba.}
;* AluoM kA xo kilo KarIxiye.
;xo kilo AlU KarIxiye.
;
;He is very fond of his dog.
;vaha hE bahuwa pasanxa_karanA of  usakA kuwwA
;* use apane kuwwe se bahuwa pasanxa karanA hE 
;use apanA kuwwA bahuwa pasanxa hE.
;
;ukwa uxAharaNoM se yaha spaRta hE ki 'of' kA praXAna arWa 'kA' howA hE. 
;viSiRta saMxarBoM meM yaha 'kA' BAva hinxI ke 'se', 'meM_se' Axi ke arWa 
;meM prayoga howA hE. kinwu XyAna xene para lagawA hE ki ye xono arWa BI
;'kA' se hI judZe hEM. 'se' 'kA_kAraNa' ke liye Ora 'meM_se' 'kA_hissA'
;arWa ke liye.
;
;awaH isameM anwarnihiwa sUwra hogA -
;
;anwarnihiwa sUwra ;
;
;                kA
;                |
;            |--------|
;          (kA_kAraNa)  (kA_hissA)
;            |          |
;            se         meM_se
;
;isakA sUwra hogA
;
;sUwra : kA`
; 
