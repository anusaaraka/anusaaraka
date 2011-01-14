;"dressed","Adj","1.ABURiwa/alaMkqwa"
;She was well dressed dressed to hill
;
;
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
(id-word ?id dressed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ABURiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  dress.clp  	dress1   "  ?id "  ABURiwa )" crlf))
)

; Added by human
(defrule dress2
(declare (salience 4800))
(id-root ?id dress)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kapadZe_pahanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dress.clp 	dress2   "  ?id "  kapadZe_pahanA )" crlf))
)

(defrule dress3
(declare (salience 4700))
(id-root ?id dress)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kapadZe_pahana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dress.clp 	dress3   "  ?id "  kapadZe_pahana )" crlf))
)

(defrule dress4
(declare (salience 4600))
(id-root ?id dress)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id libAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dress.clp 	dress4   "  ?id "  libAsa )" crlf))
)

(defrule dress5
(declare (salience 4500))
(id-root ?id dress)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kapadZe_pahana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dress.clp 	dress5   "  ?id "  kapadZe_pahana )" crlf))
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
(defrule dress6
(declare (salience 4400))
(id-root ?id dress)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id dressing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kapadZA_pahananA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  dress.clp  	dress6   "  ?id "  kapadZA_pahananA )" crlf))
)

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
; Added by human
(defrule dress7
(declare (salience 4300))
(id-root ?id dress)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kapadZe_pahanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dress.clp 	dress7   "  ?id "  kapadZe_pahanA )" crlf))
)

(defrule dress8
(declare (salience 4200))
(id-root ?id dress)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kapadZe_pahana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dress.clp 	dress8   "  ?id "  kapadZe_pahana )" crlf))
)

(defrule dress9
(declare (salience 4100))
(id-root ?id dress)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id libAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dress.clp 	dress9   "  ?id "  libAsa )" crlf))
)

(defrule dress10
(declare (salience 4000))
(id-root ?id dress)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kapadZe_pahana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dress.clp 	dress10   "  ?id "  kapadZe_pahana )" crlf))
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
