
(defrule certificate0
(declare (salience 5000))
(id-root ?id certificate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id certificated )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pramANiwa_kiyA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  certificate.clp  	certificate0   "  ?id "  pramANiwa_kiyA_huA )" crlf))
)

;"certificated","Adj","1.pramANiwa_kiyA_huA"
;Only certificated teachers are offered the job.
;
(defrule certificate1
(declare (salience 4900))
(id-root ?id certificate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pramANapawra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  certificate.clp 	certificate1   "  ?id "  pramANapawra )" crlf))
)

;"certificate","N","1.pramANapawra"
;The candidates were asked to submit copies of their original qualification certificates along with the application.
;
;
