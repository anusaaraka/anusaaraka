
(defrule link0
(declare (salience 5000))
(id-root ?id link)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kadI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  link.clp 	link0   "  ?id "  kadI )" crlf))
)

;"link","N","1.kadI"
;Links of a chain. 
;She provides a link between the two groups.
;
(defrule link1
(declare (salience 4900))
(id-root ?id link)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kadI_joda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  link.clp 	link1   "  ?id "  kadI_joda )" crlf))
)

;"link","V","1.kadI_jodanA"
;Link the two pieces of the chains.
;Linking the evidence is a difficult job.
;

;@@@--- Added by Nandini(29-4-14)
;We offer advice to Polish companies who want to link up with Western businesses.
;हम पोलिश कम्पनियों को सलाह देते हैं जो यूरोपियन व्यापार से अपने को जोड़ना चाहती हैं .
(defrule link2
(declare (salience 4950))
(id-root ?id link)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 up)
(kriyA-upasarga ?id ?id1)
(or(kriyA-with_saMbanXI  ?id ?id2)(kriyA-from_saMbanXI  ?id ?id2))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jodaZnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " link.clp	link2  "  ?id "  " ?id1 "  jodaZnA  )" crlf))
)


;@@@--- Added by Nandini (29-4-14)
;The department is interested in developing closer links with industry.[OLAD}
;viBAga uxyoga ke sAWa aXika vikAsa kA majabUwa sambanXa sWApiwa karane meM ruci raKawA hE.
(defrule link3
(declare (salience 5050))
(id-root ?id link)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id)
(id-root ?id1 develop)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sambanXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  link.clp 	link3   "  ?id "  sambanXa )" crlf))
)

;@@@--- Added by Nandini (29-4-14)
;The video cameras are linked to a powerful computer.[OLAD]
(defrule link4
(declare (salience 4950))
(id-root ?id link)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id judaZ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  link.clp 	link4   "  ?id " judaZ )" crlf))
)


