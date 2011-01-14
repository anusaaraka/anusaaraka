
(defrule account0
(declare (salience 5000))
(id-root ?id account)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 leKA-joKA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " account.clp	account0  "  ?id "  " ?id1 "  leKA-joKA_xe  )" crlf))
)

;He must account for his bad behaviour.
;use apane bure vyavahAra kA leKA - joKA xenA hogA
(defrule account1
(declare (salience 4900))
(id-root ?id account)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hisAba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  account.clp 	account1   "  ?id "  hisAba )" crlf))
)

(defrule account2
(declare (salience 4800))
(id-root ?id account)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAraNa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  account.clp 	account2   "  ?id "  kAraNa_ho )" crlf))
)

;default_sense && category=verb	kuCa_hone_kI_ASaMkA	0
;"account","VT","1.kuCa_hone_kI_ASaMkA"
;She never accounted that her child would fall ill during the trip.
;--"2.mAnanA"
;A person is accounted minor until he/she is 18 years.
;--"3.niSciwa_mAwrA_meM_honA"
;
;LEVEL 
;Headword : account
;
;Examples --
;
;account "N","1.hisAba/leKA"
;Every year accounts should be checked. 
;hara sAla leKe kI jAzca padZawAla karanI cAhie.
;
;--"2.KAwA"
;Ram has an account in the bank.
;bEMka me rAma kA KAwA KulA hE.
;
;--"3.mahawva"
;Sita's project should be given account.
;sIwA kI yojanA ko mahawva xiyA jAnA cAhie.
;
;--"4.vqwwAMwa"
;Ram was asked to give an account of today's news.
;rAma se Aja ke samAcAroM kA saMkRipwa vivaraNa pUCA gayA.
;
;uparyukwa vAkyo meM (1,2,4) ko [vivaraNa] Sabxa se jodZA jA sakawA hEM.
;
;1.hara sAla leKe kI jAzca padZawAla karanI cAhie.  -leKA(pEse kA hisAba- KiwAba)-vivaraNa.
;2.bEMka me rAma kA KAwA KulA hE.            -KAwA(pEse kA hisAba-KiwAba)-vivaraNa.
;4.rAma ko Aja ke samAcAra kA saMkRipwa vivaraNa pUCA gayA.
;3  sIwA kI yojanA ko mahawva xiyA jAnA cAhie.  -mahawva(mahawva kA viRaya,jEse EwihAsika                                                    mahawva)-vivaraNa.
;
;
;sUwra : vivaraNa[>KAwA]
;
