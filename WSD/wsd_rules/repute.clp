
(defrule repute0
(declare (salience 5000))
(id-root ?id repute)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id reputed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id viKyAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  repute.clp  	repute0   "  ?id "  viKyAwa )" crlf))
)

;"reputed","Adj","1.viKyAwa"
;He is the reputed author of a novel.
;
(defrule repute1
(declare (salience 4900))
(id-root ?id repute)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KyAwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repute.clp 	repute1   "  ?id "  KyAwi )" crlf))
)

;"repute","N","1.KyAwi"
;Sachin tendulkar is a player of international repute.
;
(defrule repute2
(declare (salience 4800))
(id-root ?id repute)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prasixXa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repute.clp 	repute2   "  ?id "  prasixXa_ho )" crlf))
)

;"repute","VT","1.prasixXa_honA"
;He was reputed to be a millionaire.
;
