
(defrule pelt0
(declare (salience 5000))
(id-root ?id pelt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pelt.clp 	pelt0   "  ?id "  KAla )" crlf))
)

;"pelt","N","1.KAla"
;The pelts of dead foxes are good for making leather belts.
;
(defrule pelt1
(declare (salience 4900))
(id-root ?id pelt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PZeMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pelt.clp 	pelt1   "  ?id "  PZeMka )" crlf))
)

;"pelt","V","1.PZeMkanA/PZeMkakara_mAranA"
;A wild barking dog entered the school compound && we pelted stones on it to drive away.
;

;@@@ Added by Sonam Gupta MTEch IT Banasthali 18-3-2014
;The children pelted down the bank. [cambridge]
;बच्चे बैँक भागे .
(defrule pelt2
(declare (salience 4900))
(id-root ?id pelt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 down)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pelt.clp  pelt2  "  ?id "  " ?id1 "  BAga  )" crlf))
)

;@@@ Added by Sonam Gupta MTEch IT Banasthali 18-3-2014
;It's pelting down. [cambridge]
;यह बरस रहा है .
(defrule pelt3
(declare (salience 4900))
(id-root ?id pelt)
(id-word ?id pelting)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 down)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 barasa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pelt.clp  pelt3  "  ?id "  " ?id1 "  barasa )" crlf))
)


;@@@ Added by Sonam Gupta MTEch IT Banasthali 18-3-2014
;He ran full pelt to the bus stop. [oald]
;वह बहुत तेज बस अड्डे दौड़ा .
(defrule pelt4
(declare (salience 5900))
(id-root ?id pelt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 run)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id weja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pelt.clp 	pelt4   "  ?id "  weja )" crlf))
)

;@@@ Added by Sonam Gupta MTEch IT Banasthali 18-3-2014
;Rioters pelted the police. [M-W]
;दंगाइयों ने पुलिस को मारा .
(defrule pelt5
(declare (salience 5400))
(id-root ?id pelt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pelt.clp 	pelt5   "  ?id "  mAra )" crlf))
)


;@@@ Added by Sonam Gupta MTEch IT Banasthali 18-3-2014
;The children came pelting down the street.  [M-W]
;बच्चे गली में भागते हुए आए .
(defrule pelt6
(declare (salience 4980))
(id-root ?id pelt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 down)
(kriyA-kqxanwa_karma  ? ?id)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pelt.clp  pelt6  "  ?id "  " ?id1 "  BAga )" crlf))
)


;@@@ Added by Sonam Gupta MTEch IT Banasthali 18-3-2014
;We were pelting along.  [M-W]
;हम तेज चल रहे थे .
(defrule pelt7
(declare (salience 4980))
(id-root ?id pelt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 along)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 weja_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pelt.clp  pelt7  "  ?id "  " ?id1 "  weja_cala )" crlf))
)
