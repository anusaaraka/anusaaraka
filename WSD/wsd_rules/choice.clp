;@@@ Added by Preeti(1-3-14)
;Women are forced to make a choice between family and career. [Oxford Advanced Learner's Dictionary]
;swriyAz parivAra Ora jIvikA ke bIca cayana karane ke liye majabUra howI hEM.
(defrule choice1
(declare (salience 1000))
(id-root ?id choice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(saMjFA-to_kqxanwa  ?id ?) (kriyA-by_saMbanXI  ? ?id)
(viSeRya-between_saMbanXI  ?id ?) (kriyA-with_saMbanXI  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cayana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  choice.clp 	choice1  "  ?id "   cayana)" crlf))
)

;@@@ Added by Preeti(1-3-14)
;Now you know all the facts, you can make an informed choice. [Cambridge Learner’s Dictionary]
;aba Apa saBI waWya jAnawe hEM, Apa sUciwa cayana kara sakawe hEM.
(defrule choice2
(declare (salience 1000))
(id-root ?id choice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-object  ?id1 ?id)(kriyA-subject  ?id1 ?id))
(id-root ?id1 make)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cayana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  choice.clp 	choice2  "  ?id "   cayana)" crlf))
)

;@@@ Added by Preeti(1-3-14)
;Harvard was not his first choice. [Cambridge Learner’s Dictionary]
;harvard usakI praWama pasanxa nahIM WI.
(defrule choice3
(declare (salience 1000))
(id-root ?id choice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-RaRTI_viSeRaNa  ?id ?)(viSeRya-by_saMbanXI  ? ?id)) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pasanxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  choice.clp 	choice3  "  ?id "   pasanxa)" crlf))
)

;@@@ Added by Preeti(1-3-14)
;Champagne is their drink of choice. [Cambridge Learner’s Dictionary]
;SEMpena unakA pasanxa kA  peya_yA Sarabawa hE.
 (defrule choice4
(declare (salience 1050))
(id-root ?id choice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id1 ?id)
(id-root ?id1 drink)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pasanxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  choice.clp 	choice4  "  ?id "   pasanxa)" crlf))
)
;@@@ Added by Preeti(1-3-14)
;The choice is yours. [Cambridge Learner’s Dictionary]
;pasanxa ApakI hE.
 (defrule choice5
(declare (salience 1000))
(id-root ?id choice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa  ?id ?id1)
(id-root ?id1 yours)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pasanxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  choice.clp 	choice5  "  ?id "   pasanxa)" crlf))
)
;@@@ Added by Preeti(1-3-14)parsar problem
;I had the the most expensive dish on the menu - a choice fillet of fish. [Cambridge Learner’s Dictionary] 
;mEne menU para kI sabase aXika mahazgI WAlI lI- eka baDiyA kawaloM meM katI maCalI.
(defrule choice6
(declare (salience 100))
(id-root ?id choice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  choice.clp 	choice6  "  ?id "  baDiyA )" crlf))
)

;@@@ Added by Preeti(1-3-14) parsar problem
;She summed up the situation in a few choice phrases. [Oxford Advanced Learner's Dictionary]
;usane kuCa sAvaXAnIpUrvaka_cune hue vAkyAMSa meM hAlawa ka sArAMSa praswuwa kiyA.
;He used some pretty choice language. [Oxford Advanced Learner's Dictionary]
;usane sAvaXAnIpUrvaka_cunI_huI BARA kA upayoga kiyA.
(defrule choice7
(declare (salience 1000))
(id-root ?id choice)
?mng <-(meaning_to_be_decided ?id)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id1 ?id)
(id-root ?id1 phrase|language)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAvaXAnIpUrvaka_cuna_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  choice.clp 	choice7  "  ?id "  sAvaXAnIpUrvaka_cuna_ho )" crlf))
)

;------------------------ Default rule --------------------------
;@@@ Added by Preeti(1-3-14)
;The evening menu offers a wide choice of dishes.[Cambridge Learner’s Dictionary]
;sanXyA menU WAliyoM kA eka vyApaka vikalpa xewI hE.
(defrule choice0
(id-root ?id choice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vikalpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  choice.clp   choice0  "  ?id "   vikalpa)" crlf))
)

