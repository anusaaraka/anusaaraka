
(defrule amaze0
(declare (salience 5000))
(id-root ?id amaze)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id amazing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id AScaryajanaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  amaze.clp  	amaze0   "  ?id "  AScaryajanaka )" crlf))
)

;"amazing","Adj","1.AScaryajanaka"
;She gave me an amazing look.
;
(defrule amaze1
(declare (salience 4900))
(id-root ?id amaze)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id amazed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id acamBiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  amaze.clp  	amaze1   "  ?id "  acamBiwa )" crlf))
)

;"amazed","Adj","1.acamBiwa"
;She maintained an amazed silence today.
; 
;"amazement","N","1.acamBA"
;She looked at me in amazement.
;
;
(defrule amaze2
(declare (salience 4800))
(id-root ?id amaze)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cakiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  amaze.clp 	amaze2   "  ?id "  cakiwa_ho )" crlf))
)

(defrule amaze3
(declare (salience 4700))
(id-root ?id amaze)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cakiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  amaze.clp 	amaze3   "  ?id "  cakiwa_kara )" crlf))
)

;"amaze","V","1.cakiwa karanA"
;Martina Hingis's elimination at the first round of Wimbledon championship
;amazed everybody.
;
;
