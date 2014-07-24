
;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;Pool of  blood. [Cambridge]
;खून की बहुत अधिक मात्रा . 
(defrule pool0
(declare (salience 5000))
(id-root ?id pool)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 oil|blood|light)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_aXika_mAwrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pool.clp 	pool0   "  ?id "  bahuwa_aXika_mAwrA )" crlf))
)

;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;As unemployment rises, the pool of cheap labour increases. [Cambridge]
;जब बेरोजगारी में वृद्धि होती है, सस्ते श्रमिक की संख्या में वृद्धि होती है . 
(defrule pool1
(declare (salience 4900))
(id-root ?id pool)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-subject  ? ?id)
(viSeRya-det_viSeRaNa  ?id ?)
(viSeRya-of_saMbanXI  ?id ?id1)
;(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMKyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pool.clp 	pool1   "  ?id "  saMKyA )" crlf))
)


;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;A pool table. [Cambridge]
;एक पूल खेल की मेज.
(defrule pool2
(declare (salience 4800))
(id-root ?id pool)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 table|room|hall|game|play|team|players)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUla_Kela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pool.clp 	pool2   "  ?id "  pUla_Kela )" crlf))
)


(defrule pool3
(declare (salience 4700))
(id-root ?id pool)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pool.clp 	pool3   "  ?id "  wAla )" crlf))
)

(defrule pool4
(declare (salience 4600))
(id-root ?id pool)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ikatTA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pool.clp 	pool4   "  ?id "  ikatTA_kara )" crlf))
)

;"pool","V","1.ikatTA karanA"
;All of Rani's friends pooled money to buy her gift.
;
;
