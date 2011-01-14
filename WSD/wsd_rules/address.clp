
(defrule address0
(declare (salience 5000))
(id-root ?id address)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 him)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMboXiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  address.clp 	address0   "  ?id "  saMboXiwa_kara )" crlf))
)

(defrule address1
(declare (salience 4900))
(id-root ?id address)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 her)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMboXiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  address.clp 	address1   "  ?id "  saMboXiwa_kara )" crlf))
)

(defrule address2
(declare (salience 4800))
(id-root ?id address)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 them)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMboXiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  address.clp 	address2   "  ?id "  saMboXiwa_kara )" crlf))
)

(defrule address3
(declare (salience 4700))
(id-root ?id address)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 me)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMboXiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  address.clp 	address3   "  ?id "  saMboXiwa_kara )" crlf))
)

(defrule address4
(declare (salience 4600))
(id-root ?id address)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 us)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMboXiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  address.clp 	address4   "  ?id "  saMboXiwa_kara )" crlf))
)

(defrule address5
(declare (salience 4500))
(id-root ?id address)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMboXiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  address.clp 	address5   "  ?id "  saMboXiwa_kara )" crlf))
)

;Addd by sheetal(26-12-2009).
(defrule address6
(declare (salience 4950))
(id-root ?id address)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) welcome)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1) svAgawa_BARaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  address.clp   address6   "  ?id "  svAgawa_BARaNa )" crlf))
)
;The chief guest gave a welcome address .


;default_sense && category=verb	pawA_liKa	0
;"address","V","1.pawA_liKanA"
;Did you address the letter?
;--"2.BARaNa_xenA"
;The president is about to address the nation.
;--"3.nivexana_karanA"
;Please address all suggestions to the chairman.
;--"4.upAXi_xenA"
;Address all your male teachers as 'sir'.
;--"5.vAkiPa_karanA[honA]"
;We must address ourselves to the main problem of our society.
;
;LEVEL 
;
;
;Headword : address
;
;Examples --
;
;"address","N","1.pawA"
;Better note down my address so that we can communicate easily.
;merA pawA liKa lo jisase hama paraspara AsAnI se bAwacIwa kara pAez.
;--"2.BARaNa"
;The president gave a very inspiring address.
;rARtrapawi ne bahuwa preraNAxAyaka BARaNa/saMxeSa xiyA.
;"address","V","1.pawA_liKanA"
;Did you address the letter?
;kyA wumane pawRa para pawA liKa xiyA.
;--"2.BARaNa_xenA"
;The president is about to address the nation.
;rARtrapawi rARtra ke nAma saMxeSa xenevAle hEM.
;--"3.nivexana_karanA"
;Please address all suggestions to the chairman.
;apane saBI suJAva saBApawi ko xIjiye.
;--"4.upAXi_xenA"
;Address all your male teachers as 'sir'.
;apane saBI puruRa-aXyApakoM ko 'sara' se samboXiwa kIjiye.
;--"5.vAkiPa_karanA[honA]"
;We must address ourselves to the main problem of our society.
;hameM svayaM ko   
;
;  'samboXana' isa Sabxa kA bIjArWa prawIwa howA hE.  jaba kisI ko samboXiwa kiyA jAwA
;hE wo usameM 'samboXiwa waWya' Ora jo samboXiwa hE usakA 'pawA' BI A jAwe hEM.
;awaH 'address' kA anwarnihiwa sUwra hogA - 
;
;
;anwarnihiwa sUwra ; 
;
;samboXana(BARaNa) samboXiwa_kara  jisako_samboXiwa_kiyA_usakA_pawA_liKa  pawA
;a brief address..address the crowd..letter addressed to..address
;
;
;sUwra : pawA[_BARaNa<samboXana]
;
