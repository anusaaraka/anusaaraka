

;Added by Meena(22.5.11)
;In fact she had been feeling tired and queasy for the past few days. 
(defrule past00
(declare (salience 4800))
(id-root ?id past)
?mng <-(meaning_to_be_decided ?id)
(or(id-root =(+ ?id 1) few|day|year|month|week|hour)(id-root =(+ ?id 2) day|year|month|week|hour))
(or(viSeRya-viSeRaNa =(+ ?id 1) ?id)(viSeRya-viSeRaNa =(+ ?id 2) ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id piCalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  past.clp      past00   "  ?id "  piCalA )" crlf))
)


;Added by human
(defrule past0
(declare (salience 5000))
(id-root ?id past)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 month)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id piCalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  past.clp 	past0   "  ?id "  piCalA )" crlf))
)

(defrule past1
(declare (salience 4900))
(id-root ?id past)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 week)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id piCalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  past.clp 	past1   "  ?id "  piCalA )" crlf))
)

(defrule past2
(declare (salience 4800))
(id-root ?id past)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 year)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id piCalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  past.clp 	past2   "  ?id "  piCalA )" crlf))
)




(defrule past3
(declare (salience 4700))
(id-root ?id past)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 day)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id piCalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  past.clp 	past3   "  ?id "  piCalA )" crlf))
)

(defrule past4
(declare (salience 4600))
(id-root ?id past)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) our)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_pare))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  past.clp 	past4   "  ?id "  ke_pare )" crlf))
)

(defrule past5
(declare (salience 4500))
(id-root ?id past)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) their)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_pare))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  past.clp 	past5   "  ?id "  ke_pare )" crlf))
)

(defrule past6
(declare (salience 4400))
(id-root ?id past)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) my)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_pare))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  past.clp 	past6   "  ?id "  ke_pare )" crlf))
)

(defrule past7
(declare (salience 4300))
(id-root ?id past)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) her)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_pare))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  past.clp 	past7   "  ?id "  ke_pare )" crlf))
)

(defrule past8
(declare (salience 4200))
(id-root ?id past)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) his)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_pare))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  past.clp 	past8   "  ?id "  ke_pare )" crlf))
)

(defrule past9
(declare (salience 4100))
(id-root ?id past)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) an)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_pare))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  past.clp 	past9   "  ?id "  ke_pare )" crlf))
)

(defrule past10
(declare (salience 4000))
(id-root ?id past)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) a)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_pare))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  past.clp 	past10   "  ?id "  ke_pare )" crlf))
)

(defrule past11
(declare (salience 3900))
(id-root ?id past)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) the)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_pare))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  past.clp 	past11   "  ?id "  ke_pare )" crlf))
)

(defrule past12
(declare (salience 3800))
(id-root ?id past)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) is)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bIwa_gayA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  past.clp 	past12   "  ?id "  bIwa_gayA )" crlf))
)

(defrule past13
(declare (salience 3700))
(id-root ?id past)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 2) in)
(id-word =(- ?id 1) the)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUwakAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  past.clp 	past13   "  ?id "  BUwakAla )" crlf))
)

(defrule past14
(declare (salience 3600))
(id-root ?id past)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUwapUrva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  past.clp 	past14   "  ?id "  BUwapUrva )" crlf))
)

(defrule past15
(declare (salience 3500))
(id-root ?id past)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) the)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUwakAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  past.clp 	past15   "  ?id "  BUwakAla )" crlf))
)

(defrule past16
(declare (salience 3400))
(id-root ?id past)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 figure)
(viSeRya-of_saMbanXI ?id1 ?id) ;Replaced viSeRya-of_viSeRaNa as viSeRya-of_saMbanXI programatically by Roja 09-11-13
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUwakAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  past.clp 	past16   "  ?id "  BUwakAla )" crlf))
)

; The figures of the past such as Buddha, Lao Tse && Jesus ..
(defrule past17
(declare (salience 3300))
(id-root ?id past)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAxa_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  past.clp 	past17   "  ?id "  bAxa_meM )" crlf))
)

(defrule past18
(declare (salience 3200))
(id-root ?id past)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pare))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  past.clp 	past18   "  ?id "  pare )" crlf))
)

;"past","Prep","1.pare"
;This issue is past her understanding.
;--"2.se aXika"
;Her grandmother is past eighty five.
;
;
;LEVEL 
;
;
;Headword : past
;
;Examples --
;
;'past' Sabxa kA sUwra banAne kA prayAsa:-
;
;"past","N","1.vigawa" 
;She has been there many times in the past.
;vaha bahuwa bAra vigawa meM vahAz rahI hE.<--BUwakAla
;--"2.awIwa 
;We know nothing of her past.
;hama usake awIwa ke viRaya meM kuCa nahIM jAnawe.<--BUwakAla
;--"3.BUwakAlika(past tense) 
;The past of the verb 'take'is'took'.past tense)
;kriyA Sabxa 'take'kA BUwakAlika Sabxa' took' hE.<--BUwakAlika
;
;"past","adj","1.bIwa gayA" 
;The time for the meeting is past.
;goRTI kA samaya bIwa gayA hE.<--bIwa gayA hE<--BUwakAla
;--"2.piCalA" 
;The past month you had been to Delhi. 
;wuma piCale mahIne xillI gaye We.<--bIwa gayA hE<--BUwakAla
;--"3.BUwapUrva"
;Both past && present students of the college  attended the function.
;kAleja ke PaMkaSana meM xonoM BUwapUrva Ora varwamAna CAwroM ne BAga liyA. <--bIwA huA<--BUwakAlika
;
;"past","prep","1.ke bAxa(waka) 
;It was past midnight when we got home.
;hama loga AXIrAwa ke bAxa Gara pahuzce.<--ke bAxa
;--"2.ke pAra" 
;If you look past the church you'll see the cinema hall. 
;agara wuma carca ke pAra xeKo wo wumhe sinamA hAla xiKAI xegA.<--ke pare<--bAxa meM 
;--"3.ke pare" 
;He didn't get past the first question in the exam.
;parIkRA kA praWama praSna hI usake ximAga ke pare WA.<--ke pare<--bAxa meM
;
;nota:-'past'ke saBI vAkyoM kA nirIkRaNa karane ke uparAnwa isa niRkarRa para pahuzcA jA 
;   sakawA hE ki aXikAMSa saMjFA,kriyA evaM viSeRaNa, vAkyoM kA nABikIya arWa<--BUwakAla   se liyA jA sakawA hE.
;      isake liye sUwra nimna prakAra liKA jA sakawA hE
;        
;sUwra : bAxa_meM[<BUwakAla]
;
;
;
