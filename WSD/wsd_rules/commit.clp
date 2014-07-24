;$$$  Modified by Preeti(21-12-13) Removed relations and root fact conditions.
;This file is created by Aditya and Hardik(8.07.2013),IIT(BHU)
;He committed a murder.
;Who committed this crime?
(defrule commit0
(declare (salience 1000))
(id-root ?id commit)
?mng <-(meaning_to_be_decided ?id)
;(or (kriyA-object ?id ?id1)(kriyA-subject ?id ?id1))
;(id-root ?id1 murder|sin|rape|error|crime|act|suicide|offence|fraud) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  commit.clp  	commit0   "  ?id "   kara)" crlf))
)

;@@@ Added by Preeti(21-12-13)
;Borrowers should think carefully before committing themselves to taking out a loan. [ Oxford Advanced Learner's Dictionary]
;qNa lene ke liye vacanabaXxa hone se pahale karjaxAroM ko sAvaXAnI se socanA cAhie.
(defrule commit1
(declare (salience 1050))
(id-root ?id commit)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-object  ?id ?id1) (kriyA-karma  ?id ?))
(id-root ?id1  yourself|themselves)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vacanabaXxa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  commit.clp  	commit1   "  ?id "   vacanabaXxa_ho)" crlf))
)

;@@@ Added by Preeti(21-12-13)
;He committed himself to helping others. [ Oxford Advanced Learner's Dictionary]
;usane svayaM ko xUsaroM kI sahAyawA karane ke liye samarpiwa kiyA.
(defrule commit2
(declare (salience 1050))
(id-root ?id commit)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1) 
(id-root ?id1  himself)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samarpiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  commit.clp  	commit2   "  ?id "   samarpiwa_kara)" crlf))
)

;@@@ Added by Preeti(21-12-13)
;The government has committed thousands of pounds to the research. [ Oxford Advanced Learner's Dictionary]
;sarakAra SoXa ko hajAroM pOMda xe cukI hE.
(defrule commit3
(declare (salience 1050))
(id-root ?id commit)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1) 
(id-root ?id1  amount|thousand)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  commit.clp  	commit3   "  ?id "   xe)" crlf))
)

;@@@ Added by Preeti(21-12-13)
;She was committed to a psychiatric hospital. [ Oxford Advanced Learner's Dictionary]
;use eka manaScikiwsIya aspawAla BejA gayA WA.
(defrule commit4
(declare (salience 1060))
(id-root ?id commit)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?id1)
(id-root ?id1  hospital|prison)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Beja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  commit.clp  	commit4   "  ?id "  Beja)" crlf))
)

