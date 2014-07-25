
(defrule sweep0
(declare (salience 5000))
(id-root ?id sweep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id sweeping )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id mahawwvapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  sweep.clp  	sweep0   "  ?id "  mahawwvapUrNa )" crlf))
)

;"sweeping","Adj","1.mahawwvapUrNa"
;Teacher has sweeping power on children.
;
(defrule sweep1
(declare (salience 4900))
(id-root ?id sweep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id sweeping )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id saPAI_karanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  sweep.clp  	sweep1   "  ?id "  saPAI_karanA )" crlf))
)
;"sweeping","N","1.saPAI_karanA"
;Sweeping the home is the best work for a lady.

;@@@ Added by jagriti(3.3.2014)
;Sweep up the dust.[rajpal]
;धूल बटोर लीजिए . 
(defrule sweep2
(declare (salience 4700))
(id-root ?id sweep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 up)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 batora_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " sweep.clp	sweep2  "  ?id "  " ?id1 "  batora_le )" crlf))
)
;@@@ Added by jagriti(3.3.2014)
;To sweep everything into one's net.[rajpal]
;सब कुछ अपने पास समेट लेना . 
(defrule sweep3
(declare (salience 4600))
(id-root ?id sweep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-into_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sameta_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sweep.clp 	sweep3   "  ?id "  sameta_le )" crlf))
)
;@@@ Added by jagriti(3.3.2014)
;The river swept away all the huts .[rajpal]
;नदी सारी झोपड़ियां बहा ले गयी.
(defrule sweep4
(declare (salience 4500))
(id-root ?id sweep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 away)
(kriyA-upasarga ?id ?id1)
(kriyA-subject ?id ?id2)
(id-root ?id2 river|flood)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bahA_le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " sweep.clp	sweep4  "  ?id "  " ?id1 "  bahA_le_jA )" crlf))
)
;@@@ Added by jagriti(3.3.2014)
;The government swept away several diseases.[rajpal]
;सरकार ने कई बीमारियाँ का उन्मूलन कर दिया . 
(defrule sweep5
(declare (salience 4400))
(id-root ?id sweep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 away)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?id2)
(id-root ?id2 disease)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 unmUlana_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " sweep.clp	sweep5  "  ?id "  " ?id1 "  unmUlana_kara_xe )" crlf))
)
;@@@ Added by jagriti(3.3.2014)
;Rumours swept through the town.[oald] 
;अफवाहें नगर में से तेजी से फैल गयीं
;A storm swept across the plain.[rajpal]
;आँधी समतल भूमी के उस पार तेजी से फैल गई . 
(defrule sweep6
(declare (salience 4300))
(id-root ?id sweep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-through_saMbanXI ?id ?id1)(kriyA-across_saMbanXI ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejI_se_PEla_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sweep.clp 	sweep6   "  ?id "  wejI_se_PEla_jA)" crlf))
)
;@@@ Added by jagriti(3.3.2014)
;The train swept the bridge soon.[rajpal]
;रेलगाडी शीघ्र ही पुल को तेजी से पार कर गयी . 
(defrule sweep7
(declare (salience 4200))
(id-root ?id sweep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?id1)
(id-root ?id1 train)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejI_se_para_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sweep.clp 	sweep7   "  ?id "  wejI_se_para_kara)" crlf))
)
;@@@ Added by jagriti(3.3.2014)
;He swept over the papers lying on the table.[rajpal]
;उसने मेज पर पडे हुए कागजों पर नजर दौडायी . 
(defrule sweep8
(declare (salience 4100))
(id-root ?id sweep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-over_saMbanXI ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id najara_xOdZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sweep.clp 	sweep8   "  ?id "  najara_xOdZA)" crlf))
)
;@@@ Added by jagriti(3.3.2014)
;He indicated the door with a sweep of his arm.[oald]
;उसने अपनी बाहु के घुमाव से दरवाजा दर्शाया . 
;They rowed the boat with sweep of their oars.[rajpal]
;उन्होंने नाव को पतवारों के घुमाव से खेया . 
(defrule sweep9
(declare (salience 4000))
(id-root ?id sweep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id ?id1)
(id-root ?id1 arm|oar|eye)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GumAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sweep.clp 	sweep9   "  ?id "  GumAva )" crlf))
)
;@@@ Added by jagriti(3.3.2014)
;Her book covers the long sweep of the country's history.[oald]
;उसकी किताब देश के इतिहास के लंबी अवधि को शामिल करती है.
(defrule sweep10
(declare (salience 3900))
(id-root ?id sweep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa ?id ?id1)
(id-root ?id1 long)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avaXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sweep.clp 	sweep10   "  ?id "  avaXi )" crlf))
)
;@@@ Added by jagriti(3.3.2014)
;The rescue helicopter made another sweep over the bay.[oald]
;बचाव हेलीकाप्टर ने खाड़ी के ऊपर एक और चक्कर लगाया. 
(defrule sweep11
(declare (salience 3800))
(id-root ?id sweep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object ?id1 ?id)
(id-root ?id1 make)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cakkara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sweep.clp 	sweep11   "  ?id "  cakkara )" crlf))
)
;....default rule.....
(defrule sweep12
(declare (salience 100))
(id-root ?id sweep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PElAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sweep.clp 	sweep12   "  ?id "  PElAva )" crlf))
)

;"sweep","N","1.PElAva"
(defrule sweep13
(declare (salience 100))
(id-root ?id sweep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saPZAI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sweep.clp 	sweep13   "  ?id "  saPZAI_kara )" crlf))
)

;"sweep","V","1.saPZAI_karanA"
;I use to sweep my cycle everyday.
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_sweep10
(declare (salience 3900))
(id-root ?id sweep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 long)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avaXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sweep.clp   sub_samA_sweep10   "   ?id " avaXi )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_sweep10
(declare (salience 3900))
(id-root ?id sweep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 long)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avaXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sweep.clp   obj_samA_sweep10   "   ?id " avaXi )" crlf))
)
