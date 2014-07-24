;@@@ Added by jagriti(10.1.2014)
;The cat spat at the dog. 
;बिल्ली कुत्ते पर घुरघुराया.
(defrule spit0
(declare (salience 5000))
(id-root ?id spit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject ?id  ?id1)
(id-root ?id1 cat|dog|lion|tiger)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GuraGurA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spit.clp 	spit0   "  ?id "  GuraGurA )" crlf))
)
;@@@ Added by jagriti(10.1.2014)
;He took one sip of wine and spat it out.
;उन्होंने  शराब की एक घूंट लिया और इसे उगल दिया.
;He spat the meat out in disgust.
;उसने घृणा में मांस उगल दिया..
(defrule spit1
(declare (salience 4900))
(id-root ?id spit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-root ?id1 out)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ugala_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " spit.clp	 spit1  "  ?id "  " ?id1 "  ugala_xe )" crlf))
)
;@@@ Added by jagriti(10.1.2014)
;She spat curses at me. 
;उसने मुझे अपशब्द कहे.
(defrule spit2
(declare (salience 4800))
(id-root ?id spit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 curse)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spit.clp 	spit2   "  ?id "  kaha )" crlf))
)

;...Default rule....
(defrule spit3
(declare (salience 100))
(id-root ?id spit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WUka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spit.clp 	spit3   "  ?id "  WUka )" crlf))
)

;"spit","N","1.WUka"
;Wipe the spit off his lips.
;--"2.sIKa"
;A spit is used to cook food in a barbaque.
;
(defrule spit4
(declare (salience 100))
(id-root ?id spit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WUka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spit.clp 	spit4   "  ?id "  WUka )" crlf))
)

;"spit","V","1.WUkanA"
;You should not spit at public places.
;--"2.jZora_se_bolanA"
;The cat spat at the dog.
;
