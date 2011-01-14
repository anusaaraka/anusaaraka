
(defrule fancy0
(declare (salience 5000))
(id-root ?id fancy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asAmAnya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fancy.clp 	fancy0   "  ?id "  asAmAnya )" crlf))
)

;"fancy","Adj","1.asAmAnya"
;She has a fancy calculator.
;--"2.baDZe_caDZe"
;The store sells items neatly packed with fancy price tags.
;Rita loves making fancy statements at every oppurtunity.
;
(defrule fancy1
(declare (salience 4900))
(id-root ?id fancy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kalpanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fancy.clp 	fancy1   "  ?id "  kalpanA )" crlf))
)

;"fancy","N","1.kalpanA"
;He is having silly teenage fancies.
;--"2.CotA_sajA_huA_keka"
;She bought fancies on her birthday.
;
(defrule fancy2
(declare (salience 4800))
(id-root ?id fancy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pasanxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fancy.clp 	fancy2   "  ?id "  pasanxa_kara )" crlf))
)

;"fancy","VT","1.pasanxa_karanA"
;I fancy colorful stamps.
;--"2.icCA_honA"
;She fancies a strong hot cup of tea after a long working session.
;--"3.socanA"
;In the dark she fancied that she saw a large animal figure move behind the trees.
;He fancies that India will win this match but I find it impossible.
;LEVEL 
;Headword  : fancy
;
;Examples --
;
;"fancy","N","1.pasanxa"
;She has a fancy for hotel food
;use hotela kA KAnA pasanxa hE
;--"2.kalpanA" 
;He is having teenaged fancies
;vaha kiSorAvasWA vAlI kalpanAez karawA hE.
;
;"fancy","V","pasanxa_karanA"
;I fancy colorful dress
;muJe raMgIna poSAka pasanxa hE
;--"2.socanA" <--pasanxa_karanA
;Which horse do you fancy in the next race?
;agale xOda meM kOna sA GodA(jIwane ko)socawe ho?
;
;"fancy","Adj","asAmAnya" <--sajAvatI<--kalpanA para AXAriwa
;I have a fancy calculator
;mere pAsa eka asAmAnya gaNiwra hE
;--"2.baDZe_caDZe"  <--manamAnA_mUlya <--pasanxa kA
;He always gives fancy prices for his goods 
;vaha hameSA baDZA caDZAkara vaswuoM kA xAma xewA hE
;
;
;vyAKyA --
;
;uparyukwa viSeRaNa vAkya 1.meM `fancy calculator' aWavA gaNiwra asAmAnya hone   ke kAraNa `kalpanA' se janI vaswuoM kA BAsa howA hE. 'fancy' kA bIjArWa 'kalpanA' hI lagawA hE. kalpanA se 'pasanxa' kA BAva AyA prawIwa howA hE.
;
;
;anwarnihiwa sUwra ;
;
;kalpanA - kalpanA se AyA - pasanxa_karanA
;            |--baDZA_caDZA
;
;sUwra  : kalpanA`
;
