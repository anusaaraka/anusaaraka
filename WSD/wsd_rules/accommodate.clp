
(defrule accommodate0
(declare (salience 5000))
(id-root ?id accommodate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id accommodating )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sahayoga_xenA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  accommodate.clp  	accommodate0   "  ?id "  sahayoga_xenA )" crlf))
)

;"accommodating","Adj","1.sahayoga_xenA"
;I found the officials extremely accommodating to visitors.
;
(defrule accommodate1
(declare (salience 4900))
(id-root ?id accommodate)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raKa_saka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  accommodate.clp 	accommodate1   "  ?id "  raKa_saka )" crlf))
)

(defrule accommodate2
(declare (salience 4800))
(id-root ?id accommodate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raha_saka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  accommodate.clp 	accommodate2   "  ?id "  raha_saka )" crlf))
)

;"accommodate","V","1.raha[raKa]_sakanA"
;The resort can accommodate upto 100 guests.
;--"2.samAviRta_karanA[karAnA]"
;These policies are designed to accomodate everyone
;--"3.samAyojiwa_karanA"
;Dinosaurs couldn't accomodate to the changing environment.
;--"4.sahAyawA_karanA"
;The banks accomodate poor farmers with loan.
;
