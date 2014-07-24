
(defrule only0
(declare (salience 5000))
(id-root ?id only)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) the )
(id-word =(+ ?id 1) son)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id akelA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  only.clp 	only0   "  ?id "  akelA )" crlf))
)

(defrule only1
(declare (salience 4900))
(id-root ?id only)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) the )
(id-word =(+ ?id 1) daughter)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id akelA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  only.clp 	only1   "  ?id "  akelA )" crlf))
)

;I am the only son of my parents.
(defrule only2
(declare (salience 4800))
(id-root ?id only)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) the)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekamAwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  only.clp 	only2   "  ?id "  ekamAwra )" crlf))
)

;Modified by sheetal(25-02-10)
;This is the only bed available.His bed was next to the room's only window .
(defrule only3
(declare (salience 4700))
(id-root ?id only)
?mng <-(meaning_to_be_decided ?id)
(or (id-cat_coarse ?id adjective)(viSeRaNa-viSeRaka  ?viS ?id));"viSeRaNa-viSeRaka" is added by sheetal.
(not (viSeRya-saMKyA_viSeRaNa  =(+ ?id 2) =(+ ?id 1)));Added by sheetal
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekamAwra));meaning 'kevala' is changed here.
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  only.clp     only3   "  ?id "  ekamAwra )" crlf))
)


;"only","Adj","1.kevala/akelA"
;Only he could do such a foolish thing.
;
(defrule only4
(declare (salience 4600))
(id-root ?id only)
?mng <-(meaning_to_be_decided ?id)
(or (id-cat_coarse ?id adverb)(viSeRya-saMKyA_viSeRaNa  =(+ ?id 2) =(+ ?id 1)));"viSeRya-saMKyA_viSeRaNa" added by sheetal
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sirPa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  only.clp 	only4   "  ?id "  sirPZa )" crlf))
)

;"only","Adv","1.sirPZa"
;He arrived only to find his wife dead.
;

;I will go to the market only after eating an apple. Added by Sukhada (14-10-12)
(defrule only5
(declare (salience 4900))
(id-root ?id only)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  only.clp  only5   "  ?id "  hI )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 5-2-2014
;But their belief was that the expenditure which they recommended would be remunerative, 
;not only in its effect upon the sources of the moral strength but also upon the economic 
;welfare of the country and upon its civic and industrial initiative. [gyanidhi]
;परंतु उनका यह विश्वास था कि उनके द्वारा सुझाये गये व्यय से न केवल  हैतिक शक्ति के स्त्रोतों पर बल्कि देश के आर्थिक कल्याण पर और 
;उसकी नागरिक और औद्योगिक पहलशक्ति पर भी लाभकारी असर पङेगा।।
(defrule only6
(declare (salience 4900))
(id-root ?id only)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_niReXaka  ?id ?id1)
(id-root ?id1 not)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nA_kevala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " only.clp  only6  "  ?id "  " ?id1 "  nA_kevala  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 11-3-2014
;The other two forces as we shall see operate only at nuclear scales. [physics ncert]
;अन्य दो बल, जैसा कि हम आगे देखेँगे, केवल नाभिकीय पैमाने पर सक्रिय होते हैं.
(defrule only7
(declare (salience 4900))
(id-root ?id only)
?mng <-(meaning_to_be_decided ?id)
(and(kriyA-kriyA_viSeRaNa  ?verb ?id)(kriyA-at_saMbanXI  ?verb ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kevala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  only.clp  only7   "  ?id "  kevala )" crlf))
)

