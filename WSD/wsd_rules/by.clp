
(defrule by0
(declare (salience 5000))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 pass)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kawarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " by.clp	by0  "  ?id "  " ?id1 "  kawarA  )" crlf))
)



(defrule by1
(declare (salience 4800))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) jolt|tarnish)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_kAraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by1   "  ?id "  ke_kAraNa )" crlf))
)

(defrule by2
(declare (salience 4700))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) is|are|be|was|were|been|am)
(id-word =(+ ?id 1) integer|whole number|number)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by2   "  ?id "  ka )" crlf))
)

(defrule by3
(declare (salience 4600))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) miss )
(id-word =(+ ?id 1) measure|step|action|quantity|amount|measurement|meter|metre|bar|unit|dimension|dimensions|meters)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by3   "  ?id "  waka )" crlf))
)

(defrule by4
(declare (salience 4500))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) swear|vow)
(id-word =(+ ?id 1) god|bible|geeta|gita)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by4   "  ?id "  kI )" crlf))
)



;Modified by sheetal
;My many female friends were angered by the hearings .
(defrule by5
(declare (salience 4400))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(or (id-word =(- ?id 1) join)(id-root =(+ ?id 2) hearing));'hearing' is added by sheetal 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp        by5   "  ?id "  se )" crlf))
)

(defrule by6
(declare (salience 4300))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) walk)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAsa_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by6   "  ?id "  pAsa_se )" crlf))
)

(defrule by7 
(declare (salience 4200))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) be|sit|sleep|stand);Replaced the list 'is|are|was|were|am 'with 'be' by Shirisha Manju Suggested by Chaitanya Sir (2-11-13)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAsa_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by7   "  ?id "  pAsa_meM )" crlf))
)

;He was standing by me
(defrule by8
(declare (salience 4100))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-root =(+ ?id 1) measure|step|action|quantity|amount|measurement|meter|metre|bar|unit|dimension);Replaced 'word' fact with 'root' fact by Shirisha Manju (6-11-13)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_xvArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by8   "  ?id "  ke_xvArA )" crlf))
)

; It gets replaced by a new one.
(defrule by9
(declare (salience 4000))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) down )
(id-word =(+ ?id 1) weight)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_kAraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by9   "  ?id "  ke_kAraNa )" crlf))
)

(defrule by10
(declare (salience 3900))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
;(id-word =(+ ?id 1) time|time period|period of time|period|moment|minute|second|instant|point in time|clock time|hour)
(id-word =(+ ?id 1) time|period|moment|minute|second|instant|point|clock|hour);commented the above fact by Manju(20--6-13) 
;								              bcoz in id-word fact word field has no spaces.
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by10   "  ?id "  waka )" crlf))
)

; time is subset of measure, && hence order is important.



;Re-Modified by Sukhada 16-10-13
;Modified by Meena(17.8.11);added "|verb|verbal_noun" in the list to stop this rule for By going there you can earn more money.
;Modified by Meena(2.8.11) added{(not(id-cat_coarse =(+ ?id 1) PropN)) and (kriyA-by_saMbanXI ?kri =(+ ?id 1))},deleted (id-cat_coarse =(+ ?id 1) noun) and commented (not (or (kriyA-by_saMbanXI  ?id1 ... )(... ... ...)))
;Modified by Meena(20.11.10); commented (kriyA-by_saMbanXI...) and added (id-cat_coarse =(+ ?id 1) noun)(id-root ?id1....)
;Added by Meena(12.11.09)
;By 2012 the task will be completed.
(defrule by11
(declare (salience 4000))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(not(id-cat_coarse =(+ ?id 1) PropN|verb|verbal_noun|pronoun))
(or (and (id-cat =(+ ?id 1) <num>)(kriyA-by_saMbanXI ?kri =(+ ?id 1)))
    (and(kriyA-by_saMbanXI ?kri =(+ ?id 1))(id-root =(+ ?id 1) ?str&:(and (not (numberp ?str))(gdbm_lookup_p "time.gdbm" ?str)))))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp        by11   "  ?id "  waka )" crlf))
)




(defrule by12
(declare (salience 3800))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) measure|step|action|quantity|amount|measurement|meter|metre|bar|unit|dimension|dimensions|meters )
(id-word =(+ ?id 1) measure|step|action|quantity|amount|measurement|meter|metre|bar|unit|dimension|dimensions|meters)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id guNA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by12   "  ?id "  guNA )" crlf))
)

(defrule by13
(declare (salience 3700))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) measure|step|action|quantity|amount|measurement|meter|metre|bar|unit|dimension|dimensions|meters)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_hisAba_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by13   "  ?id "  ke_hisAba_se )" crlf))
)

(defrule by14
(declare (salience 3600))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) watch|law)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_anusAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by14   "  ?id "  ke_anusAra )" crlf))
)

(defrule by15
(declare (salience 3500))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samIpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by15   "  ?id "  samIpa )" crlf))
)

;"by","Adv","1.samIpa"
;He took the pen when noone was by.


;Modified by Meena(2.8.11);added river|forest|soil| in the list Ex.Uttar pradesh is a land of cultural and geographical diversity, which is blessed by an innumerable perennial rivers, dense forests, and fertile soil. 
;Modified by Meena(19.4.11) ;added "misdeed" in the list
;His reputation was tarnished by his misdeeds.
;Modified by Meena(19.2.11);added the list for ?id2 and relation (viSeRya-by_saMbanXI  ?id1 ?id2)and commmented (or(..)) 
;I told him by telephone that I was coming by car. 
;Mysore also known as the city of palaces is just 139 kms by road from Bangalore. 
;Added by Meena(9.11.09)
;They were awakened by the sound of a gun.
;I was awakened by a gun's sound . 
(defrule by16
(declare (salience 4000))
;(declare (salience 3500))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-by_saMbanXI  ?id1 ?id2)(viSeRya-by_saMbanXI  ?id1 ?id2)) ;in ol we get this relation which most probably is not correct, once this is sorted out, we can delete (viSe..) and can get the correct output with only (kriyA-by_saMbanXI  ?id1 ?id2)
(id-root ?id2 radio|river|forest|soil|sound|road|telephone|car|bus|letter|misdeed|exposure|fire);added "exposure" in the list (The silver was tarnished by the long exposure to the air.)
;Added fire in the list by Manju Suggested by Preeti(LTRC)(21-08-13) Ex: The building was completely destroyed by fire.              
;(or(viSeRya-of_saMbanXI  ?id2 ?id3)(viSeRya-RaRTI_viSeRaNa  ?id2 ?id3))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp        by16   "  ?id "  se )" crlf))
)



;Added by Meena(12.11.10)
;Cats sleep by day and hunt by night.
(defrule by17
(declare (salience 4300))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  =(- ?id 1) ?id1)
(id-root ?id1 day|night|candlelight)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp        by17   "  ?id "  meM )" crlf))
)


;Salience increased by Meena(17.8.11)
;Added by Meena(24.4.10)
;I count the cars as they pass by the office .
(defrule by18
(declare (salience 4000))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) pass)
(kriyA-by_saMbanXI   =(- ?id 1) ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se_hokara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp        by18   "  ?id "  se_hokara )" crlf))
)


;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 09-jan-2014
;Note: condition about category is added by Garima Singh.This can also be replaced by animate condition.
;conflicting example: The keen interest taken by Asutosh in legal studies is shown by the fact that he attended the Tagore Law Lectures for three successive years. 
;Added by Meena(10.11.09)
;The book was read by Meera.
;A record similar to the one outlined above may also have been achieved by many other students.
(defrule by19
(declare (salience 3900))
;(declare (salience 3400))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?id1 ?id2)
(or
(id-cat_coarse ?id2 PropN|pronoun);this condition is added by Garima Singh
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_xvArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp        by19   "  ?id "  ke_xvArA )" crlf))
)




;Salience reduced by Meena(9.11.09)
(defrule by20
(declare (salience 0));salience reduced by Garima Singh
;(declare (salience 3400))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_xvArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by20   "  ?id "  ke_xvArA )" crlf))
)

;xvArA is more frequent, followed by 'se' followed by 'pAsa_meM'
;default_sense && category=preposition	pAsa_meM	0
;"by","Prep","1.pAsa_meM/sAWa_meM"
;She came && sat by me.
;--"2.xvArA"
;The book was given to him by Ram.
;--"3.se"
;He was holding the child by hand.
;



;Salience reduced by Meena(10.11.09)
(defrule by21
(declare (salience -1000))
;(declare (salience 3300))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by21   "  ?id "  se )" crlf))
)


;Added by Aditya and Hardik,IIT(BHU)
; "kriyA-by_saMbanXI"
;"ke_xvArA"
;Hardik was killed by gun.
;"waka"
;Maybe you will get it by delhi and you will not need to go to Lucknow.

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)06-jan-2014
;By the nineteenth century, enough evidence had accumulated in favor of atomic hypothesis of matter.
;She had promised to be back by five o'clock. 
;The application must be in by the 31st to be accepted.
(defrule by22
(declare (salience 3900))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ? ?id1)
(or(id-cat_coarse ?id1 number)(id-word ?id1 century))  
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by22   "  ?id "  waka )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)02-jan-2014
;She kept a long stick by her to chase away the goats and cows that tried to snatch at the bundles of grass and hay. 
;वह उसके पास एक छड़ी रखती थी जिससे वह बकरियों और गायों को भगाया करती है जो घास में मुँह मारने के लिए आ जाती है।
(defrule by23
(declare (salience 4000))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?id1 ?id2)
(id-word ?id2 him|her)
(kriyA-object  ?id1 ?obj)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_pAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp        by23   "  ?id "  ke_pAsa )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)07-jan-2014
;To know a person by his actions.[shiksharthi kosh]
;व्यक्ति को उसके कर्मों से जानना
(defrule by24
(declare (salience 3500))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?id1 ?id2)
;(viSeRya-RaRTI_viSeRaNa  ?id2 ?id3)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp        by24   "  ?id "  se )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)09-jan-2014
;He took up his position by the door.[olad]
;उसने दरवाजे के पास उसका स्थान लिया
(defrule by25
(declare (salience 4000))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?id2 ?det)
(id-word ?det the)
(kriyA-by_saMbanXI  ?id1 ?id2)
(not(id-cat_coarse ?id2 PropN|pronoun));added by Garima Singh
(kriyA-object  ?id1 ?obj)
(id-root ?obj ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_pAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp        by25   "  ?id "  ke_pAsa )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)09-jan-2014
;There's a pad and pencil by the phone.
;फोन के पास में एक पैड और कलम है
(defrule by26
(declare (salience 4000))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-by_saMbanXI  ?id1 ?id2)
(viSeRya-det_viSeRaNa  ?id2 ?)
(id-root ?id2 ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_pAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp        by26   "  ?id "  ke_pAsa )" crlf))
)



