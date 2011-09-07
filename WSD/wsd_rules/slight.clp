;Added by Abhishesh Srivastava(MNNIT ALLAHABAD)
;"Are those saints?" said one of the camera crew, a slight and sensitive-looking youth.
(defrule slight0
(declare (salience 5000))
(id-root ?id slight)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 youth|figure|man|woman|build|physique|boy|girl)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xubalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slight.clp 	slight0   "  ?id "  xubalA )" crlf))
)

;Added by Abhishesh Srivastava(MNNIT ALLAHABAD)
;He felt slighted by the change.
(defrule slight1
(declare (salience 4900))
(id-root ?id slight)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id slighted)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id wiraskArapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  slight.clp  	slight1   "  ?id "  wiraskArapUrNa )" crlf))
)

;Added by Abhishesh Srivastava(MNNIT ALLAHABAD)
;The poem itself is an answer to George's slighting reference to his family background.
(defrule slight2
(declare (salience 4800))
(id-root ?id slight)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id slighting)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id wiraskArapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  slight.clp  	slight2   "  ?id "  wiraskArapUrNa )" crlf))
)

;Added by Abhishesh Srivastava(MNNIT ALLAHABAD)
The overhead wires are so slight that you have to look hard to see them.
(defrule slight3
(declare (salience 4700))
(id-root ?id slight)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 wire|rod|stick)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slight.clp 	slight3   "  ?id "  pawalA )" crlf))
)

;Added by Abhishesh Srivastava(MNNIT ALLAHABAD)
;We have had a slight increase in sales over the first sixth months of the year.
;There is also a slight association between babies sleeping on their fronts and sudden infant death.
;They expected the laws of laissezfaire economics to continue in operation, with the slight change that profits would go to the community instead of to individuals.
(defrule slight4
(declare (salience 4600))
(id-root ?id slight)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WodA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slight.clp 	slight4   "  ?id "  WodA )" crlf))
)

;Added by Abhishesh Srivastava(MNNIT ALLAHABAD)
;Tobi's knowledge of homosexuality was slight.
(defrule slight5
(declare (salience 4100))
(id-root ?id slight)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WodA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slight.clp 	slight5   "  ?id "  WodA )" crlf))
)


;Added by Abhishesh Srivastava(MNNIT ALLAHABAD)
(defrule slight6
(declare (salience 4300))
(id-root ?id slight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xubalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slight.clp 	slight6   "  ?id "  xubalA )" crlf))
)

;Added by Abhishesh Srivastava(MNNIT ALLAHABAD)
;The teaching of French was seen as a deliberate slight by the Lebanese.
(defrule slight7
(declare (salience 4200))
(id-root ?id slight)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI ?id ?id1)
(kriyA-as_saMbanXI ?id ?id1)
(id-word ?id1 language|word)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wucCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slight.clp 	slight7   "  ?id "  wucCa )" crlf))
)

;"slight","Adj","1.wucCa"
;Do not speak slight language with me.
;
;

;Added by Abhishesh Srivastava(MNNIT ALLAHABAD)
;Curled up on his armchair, thin as a wood shaving, he looks far too slight to carry this immense spectacle.
;Though tall, Luke had always been slight of build and he had not filled out much with the years. 
(defrule slight8
(declare (salience 4500))
(id-root ?id slight)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa ?id ?id1)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xubalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slight.clp 	slight8   "  ?id "  xubalA )" crlf))
)
