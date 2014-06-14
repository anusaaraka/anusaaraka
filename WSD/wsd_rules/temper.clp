;@@@ Added by Prachi Rathore[29-1-14]
;He must learn to control his temper. [oald]
;उसको उसका क्रोध वश में रखना सीखना चाहिए . 
;She broke the plates in a fit of temper.[oald]
;उसने क्रोध के दौरे में प्लेट तोडे . 
(defrule temper2
(declare (salience 5500))
(id-root ?id temper)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-object  ?id1 ?id)(viSeRya-of_saMbanXI  ?id1 ?id))
(id-root ?id1 control|fit)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kroXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  temper.clp 	temper2   "  ?id "  kroXa )" crlf))
)

;@@@ Added by Prachi Rathore[29-1-14]
;She says awful things when she's in a temper. [oald]
;वह अज़ीब सी बातें कहती है जब वह क्रोध में होती है . 
(defrule temper3
(declare (salience 5500))
(id-root ?id temper)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-in_saMbanXI  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kroXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  temper.clp 	temper3   "  ?id "  kroXa )" crlf))
)



;xxxxxxxxxxxxxxxxxxxxxxx DEFAULT RULE xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
(defrule temper0
(declare (salience 5000))
(id-root ?id temper)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id manoxaSA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  temper.clp 	temper0   "  ?id "  manoxaSA )" crlf))
)

;"temper","N","1.manoxaSA"
;He lost his temper when the dual started.
;
(defrule temper1
(declare (salience 4900))
(id-root ?id temper)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lacIlA_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  temper.clp 	temper1   "  ?id "  lacIlA_banA )" crlf))
)

;"temper","VT","1.lacIlA_banAnA{XAwu_iwyAxi_ko}"
;Steel is tempered by constantly heating in the fire .
;--"2.kama_karanA"
;His punishment was tempered by pardon.
;
