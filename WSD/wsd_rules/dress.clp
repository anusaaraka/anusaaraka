;"dressed","Adj","1.ABURiwa/alaMkqwa"
;She was well dressed dressed to hill
(defrule dress0
(declare (salience 5000))
(id-root ?id dress)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sajanA-Xaja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dress.clp	dress0  "  ?id "  " ?id1 "  sajanA-Xaja  )" crlf))
)

;Weddings are a great opportunity to dress up.
;SAxiyAz sajane-Xajane ke lie acCA mOkA howI hEM
(defrule dress1
(declare (salience 4900))
(id-root ?id dress)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id dressed)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ABURiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  dress.clp  	dress1   "  ?id "  ABURiwa )" crlf))
)

;@@@ Added by Pramila(Bansthali University) on 21-11-2013
;The shopping centre was dressed like a bride.          [old clp]
;bAjAra xulhana jEsA sajA WA.
(defrule dress2                               
(declare (salience 5000))
(id-root ?id dress)
?mng <-(meaning_to_be_decided ?id)
(kriyA-like_saMbanXI  ?id ?id1)
(id-root ?id1 bride|bridegroom)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sajA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dress.clp 	dress2   "  ?id "  sajA_ho )" crlf))
)

;@@@ Added by Pramila(Bansthali University) on 21-11-2013
;The doctor told the nurse to dress the wounds of the patient.                  [old clp]
;dOYktara ne narsa se marIjZa ke GAvoM para pattI bAzXane ko kahA.
(defrule dress3                               
(declare (salience 5000))
(id-root ?id dress)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 wound)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pattI_bAzXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dress.clp 	dress3   "  ?id "  pattI_bAzXa )" crlf))
)

;@@@ Added by Pramila(Bansthali University) on 21-11-2013
;The chicken was dressed well for the dinner.                   [old clp]
;rAwa ke KAne ke liye murgA sAPa kara liyA gayA WA.
(defrule dress5                               
(declare (salience 5000))
(id-root ?id dress)
?mng <-(meaning_to_be_decided ?id)
(kriyA-karma  ?id ?id1)
(id-root ?id1 chicken|grain|rice)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAPa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dress.clp 	dress5   "  ?id "  sAPa_kara )" crlf))
)

;@@@ Added by Pramila(Bansthali University) on 21-11-2013
;Rumours are always dressed to convince the rumour mongers.              ;sentence of this file
;aPavAhoM para viSvAsa karane vAloM ke liye aPavAheM hameSa baDZA_caDZA_kara_kahI jAwI hEM. 
(defrule dress6                               
(declare (salience 5000))
(id-root ?id dress)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?id ?id1)
(id-root ?id1 convince)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZA_caDZA_kara_kaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dress.clp 	dress6   "  ?id "  baDZA_caDZA_kara_kaha )" crlf))
)

;@@@ Added by Pramila(Bansthali University) on 21-11-2013
;They're dressing Harrods' windows for Christmas.            ;cald
;वे क्रिसमस के लिए खिडकियों को सजा रहें हैं.
(defrule dress7                               
(declare (salience 5000))
(id-root ?id dress)
?mng <-(meaning_to_be_decided ?id)
(and(kriyA-object  ?id ?id1)(viSeRya-for_saMbanXI  ?id1 ?id2))
(id-root ?id2 christmas|diwali|holi)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sajA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dress.clp 	dress7   "  ?id "  sajA )" crlf))
)

(defrule dress8
(declare (salience 4400))
(id-root ?id dress)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id dressing)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kapadZA_pahananA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  dress.clp  	dress8   "  ?id "  kapadZA_pahananA )" crlf))
)
;------------------------default rules----------------------------------


(defrule dress9                                 ;same rule was removed
(declare (salience 4000))
(id-root ?id dress)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kapadZe_pahana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dress.clp 	dress9   "  ?id "  kapadZe_pahana )" crlf))
)

(defrule dress10                        ;same rule was removed
(declare (salience 0))
(id-root ?id dress)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id libAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dress.clp 	dress10   "  ?id "  libAsa )" crlf))
)


;"dress","V","1.kapadZe_pahananA"
;He dressed for the occasion.
;He has gone inside to dress for the evening party
;--"2.sajAnA"
;The shopping centre was dressed like a bride
;--"3.pattI karanA"
;The doctor told the nurse to dress the woulds of the patient
;--"4.sAPa_karanA"
;The chicken was dressed well for the dinner 
;--"5.baDZA caDZA kara kahanA"
;Rumours are always dressed to convince the rumour mongers.
;
;
;LEVEL 
;Headword : dress
;
;Examples --
;
;"dress","N","1.libAsa"
;She got a wonderful dress for her wedding day
;usane apanI SAxI ke liye eka bahuwa sunxara libAsa KarIxA hE.
;
;"dress","V","1.kapadZe_pahananA"
;He dressed for the occasion.
;usane mOke ke hisAba se kapadZe pahane.
;He has gone inside to dress for the evening party.
;vaha pArtI ke liye kapadZe pahanane anxara gayA hE.
;--"2.sajAnA"
;The shopping centre was dressed like a bride.
;bAjAra xulhana jEsA sajA WA.
;--"3.pattI karanA"
;The doctor told the nurse to dress the wounds of the patient.
;dOYktara ne narsa se marIjZa ke GAvoM para pattI bAzXane ko kahA.
;--"4.sAPa_karanA"
;The chicken was dressed well for the dinner.
;rAwa ke KAne ke liye murgA sAPa kara liyA gayA WA.
;--"5.baDZA caDZA kara kahanA"
;Rumours are always dressed to convince the rumour mongers.
;aPavAhoM para viSvAsa karane vAloM ke liye aPavAheM hameSa baDZA_caDZA_kara_kahI jAwI hEM.
;
;
;anwarnihiwa sUwra ;
;
;                        libAsa{kapadZe,poSAka}
;                      |-----|----|
;                      |          |
;                 poSAka pahananA   kapadZe pahanA
;                     |              |
;               poSAka pahana kara sajanA  cota ko kapadZA pahanAnA
;                     |             | 
;                   sajanA-sajAnA     pattI bAzXanA
;                        | 
;                --------|-------
;                |               |  
;         bAwoM meM mirca masAlA  salAxa iwyAxi ko sajAnA
;            lagA kara sajAnA         (masAle se)
;
;
;sUwra : libAsa`^sajAnA


;"dressing","N","1.kapadZA pahananA"
;She takes a long time in dressing herself up. 
;--"2.patatI bAzXanA"
;They must have applied proper dressing on the particulars wound
;--"3.sajAvata"
;The salad had a fine dressing
;--"4.BarAva"
;The pillow had a tight dressing
;
;PP_null_up && transitivity=INTR && category=verb	sajanA-Xaja	0
;Weddings are a great opportunity to dress up.
;SAxiyAz sajane-Xajane ke lie acCA mOkA howI hEM
;"dress","V","1.kapadZe_pahananA"
;He dressed for the occasion.
;He has gone inside to dress for the evening party
;--"2.sajAnA"
;The shopping centre was dressed like a bride
;--"3.pattI karanA"
;The doctor told the nurse to dress the wounds of the patient
;--"4.sAPa_karanA"
;The chicken was dressed well for the dinner 
;--"5.baDZA caDZA kara kahanA"
;Rumours are always dressed to convince the rumour mongers.

