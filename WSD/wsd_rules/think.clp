
(defrule think0
(declare (salience 5000))
(id-root ?id think)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id thinking )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vicAra_karawA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  think.clp  	think0   "  ?id "  vicAra_karawA_huA )" crlf))
)

;given_word=thinking && word_category=noun	$vicAra_karane_kI_kriyA)

;"thinking","N","1.vicAra_karane_kI_kriyA"
;My way of thinking is totally different.
;
(defrule think1
(declare (salience 4900))
(id-root ?id think)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id soca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  think.clp 	think1   "  ?id "  soca )" crlf))
)

(defrule think2
(declare (salience 4800))
(id-root ?id think)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id soca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  think.clp 	think2   "  ?id "  soca )" crlf))
)

;"think","VTI","1.soca"
;Think before you act.
;I think he is very smart.
;--"2.kalpanA_karanA"
;Just think-you could be rich one day.
;--"3.manana_karanA"
;Think of good thoughts.
;
;