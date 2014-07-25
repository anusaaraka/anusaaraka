
(defrule premium0
(declare (salience 5000))
(id-root ?id premium)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXimUlya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  premium.clp 	premium0   "  ?id "  aXimUlya )" crlf))
)

;"premium","Adj","1.aXimUlya"
;Inspite of being offered a premium rent, he didn't gave his land on lease.
;
(defrule premium1
(declare (salience 4900))
(id-root ?id premium)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bImA-kiswa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  premium.clp 	premium1   "  ?id "  bImA-kiswa )" crlf))
)

;"premium","N","1.bImA-kiswa"
;I pay a premium of Rs.500 every month for a life insurance policy.
;--"2.lABAMSa"
;


;@@@ Added by Sonam Gupta MTech IT Banasthali 2-1-2014
;You pay a premium for apartments in the city centre. [Cambridge]
;आप सिटी सैन्टर में फ्लैट के लिये अधिमूल्य देते हैं . 
(defrule premium2
(declare (salience 5500))
(id-root ?id premium)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-for_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXimUlya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  premium.clp 	premium2   "  ?id "  aXimUlya )" crlf))
)




;@@@ Added by Sonam Gupta MTech IT Banasthali 2-1-2014
;Time is at a premium just before the start of exams. [Cambridge]
;परीक्षा से ठीक पहले समय अपर्याप्त होता है.
(defrule premium3
(declare (salience 5500))
(id-root ?id premium)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-at_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aparyApwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  premium.clp 	premium3   "  ?id "  aparyApwa )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 2-1-2014
;The monthly premium for your health insurance is deducted from your paycheck. [MW]
;आपके स्वास्थ्य बीमा की माहवार बीमा किश्त आपके तनख्वाह के चैक से काटी हुई है . 
(defrule premium4
(declare (salience 5500))
(id-root ?id premium)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 monthly)
(viSeRya-viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bImA_kiSwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  premium.clp 	premium4   "  ?id "  bImA_kiSwa )" crlf))
)
