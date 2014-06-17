
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

;@@@ Added by Garima Singh(M.Tech-C.S) 22-jan-14
;I've opened an account with a building society.
;मैंने   बिल्डिंग कीं सोसाइटी में अपना खाता खोल दिया है.
(defrule account3
(declare (salience 4000))
(id-root ?id account)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?kri ?id)
(id-root ?kri open|close)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  account.clp 	account3   "  ?id "  KAwA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S) 22-jan-14
;Do you have an account at this store?
;क्या इस दुकान में हमारे पास आपका खाता है
;Do you have an account with us?
;क्या आपका खाता हमारे पास है
(defrule account4
(declare (salience 4000))
(id-root ?id account)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-with_saMbanXI ?id ?id1)(viSeRya-at_saMbanXI ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  account.clp 	account4   "  ?id "  KAwA )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S) 22-jan-14
;I paid the money into my account this morning.[cambridge]
;मैंने अपने खाते में आज सुबह पैसे जमा करा दिए .
;I need to draw some money out of my account.[cambridge]
;मुझे अपने खाते में से कुछ पैसे निकालने कीं जरूरत है.
;These prevention efforts should also take into account populations with higher or lower risk for suicide attempts.[coca]
(defrule account5
(declare (salience 4000))
(id-root ?id account)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-into_saMbanXI ?kri ?id)(kriyA-in_saMbanXI ?kri ?id)(kriyA-of_saMbanXI  ?kri ?id)) 
(id-root ?kri pay|deposit|draw)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  account.clp 	account5   "  ?id "  KAwA )" crlf))
)




;@@@ Added by Garima Singh(M.Tech-C.S) 26-nov-13
;She gave a thrilling account of her life in the jungle.
;उसने जंगल में बिताई अपनी रोमांचकारी जिंदगी का विवरण दिया .
;Your account of the accident does not agree with hers.[oald]
;आपका दुर्घटना का विवरण उस स्त्री के विवरण के साथ मेल नहीं खाता है . 
;She gave the police a full account of the incident.[oald]
;उसने पुलीस को घटना का पूरा विवरण  दिया . 
(defrule account6
(declare (salience 4000))
(id-root ?id account)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vivaraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  account.clp 	account6   "  ?id "  vivaraNa )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S) 22-jan-14
;It's of no account to me whether he comes or not.
;वह आता है या नहीं मेरे लिए इसका कोई महत्व नहीं है
;His opinion is of little account to me.
;उसके विचार मेरे लिए बहुत कम महत्व रखते हैं. 
(defrule account7
(declare (salience 4000))
(id-root ?id account)
?mng <-(meaning_to_be_decided ?id)
(kriyA-of_saMbanXI  ?kri ?id)
(viSeRya-to_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mahawava))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  account.clp 	account7   "  ?id "  mahawava )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S) 22-jan-14
;He doesn't drink alcohol on account of his health.
;वह स्वास्थ्य के कारण शराब नहीं पीता.
(defrule account8
(declare (salience 4000))
(id-root ?id account)
?mng <-(meaning_to_be_decided ?id)
(kriyA-on_saMbanXI  ?kri ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_kAraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  account.clp 	account8   "  ?id "  ke_kAraNa )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S)22-jan-14
;She was accounted a genius by all who knew her work. 
;जो भी उसके कार्य के बारे में जानता था उसका एक प्रतिभाशाली के रूप में आकलन करता था  
(defrule account9
(declare (salience 4000))
(id-word ?id accounted)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  account.clp 	account9   "  ?id "  mAna )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S) 22-jan-14
;Alison drew some money out of her account to pay for our trip.
;अलीसन ने हमारी यात्रा के लिये देने के लिये उसके खाते से थोड़ा पैसा निकाला . 
(defrule account10
(declare (salience 4000))
(id-root ?id account)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?obj ?id)
(kriyA-object  ?kri ?obj)
(id-root ?kri draw)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  account.clp 	account10  "  ?id "  KAwA )" crlf))
)



;*******************************DEFAULT RULE*****************************************************

;He must account for his bad behaviour.
;use apane bure vyavahAra kA leKA - joKA xenA hogA
(defrule account1
(declare (salience 0));salience reduced by Garima Singh(M.Tech-C.S)26-nov-13
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
(declare (salience 0));salience reduced by Garima Singh(M.Tech-C.S)26-nov-13
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
