
(defrule share0
(declare (salience 4999));salience '5000' is changed with 4999 by sheetal.;Modified by sheetal(25-02-10)
(id-root ?id share)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hissA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  share.clp    share0   "  ?id "  hissA )" crlf))
)

;"share","N","1.hissA"
;Ram gave his share to his brother.
;
(defrule share1
(declare (salience 4900))
(id-root ?id share)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAJA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  share.clp 	share1   "  ?id "  sAJA_kara )" crlf))
)

;"share","V","1.sAJA_kara"
;--"2.sAJA_karanA"
;They shared the apartment.
;



;Modified by Meena(20.5.11)
;At the end of the day, 251.2 million shares were traded. 
;Added by sheetal(25-02-10)
;Buying of shares was brisk on Wall Street today .
(defrule share2
(declare (salience 5000))
(id-root ?id share)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or (kriyA-of_saMbanXI  ?kri ?id)(viSeRya-of_saMbanXI  ?kri ?id)(viSeRya-det_viSeRaNa  ?id  ?det)(viSeRya-saMKyA_viSeRaNa  ?id ?id1))
;(subject-subject_samAnAXikaraNa  ?kri ?sam)    ;commented by Meena(20.5.11) 
;(id-root ?sam brisk)                           ;commented by Meena(20.5.11) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Seyara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  share.clp     share2   "  ?id "  Seyara )" crlf))
)
