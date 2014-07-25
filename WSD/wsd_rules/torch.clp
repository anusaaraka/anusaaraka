;@@@ Added by Prachi Rathore[3-2-14]
;They struggled to keep the torch of idealism and hope alive.[oald]
;उन्होंने आदर्शवाद और आशा की  मशाल जीवित रखने के लिए सङ्घर्ष किया   . 
(defrule torch2
(declare (salience 5100))
(id-root ?id torch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maSAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  torch.clp 	torch2   "  ?id "  maSAla )" crlf))
)


;xxxxxxxxxxxxxxxxxxx Default Rule xxxxxxxxxxxxxxxxx
(defrule torch0
(declare (salience 5000))
(id-root ?id torch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id toYrca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  torch.clp 	torch0   "  ?id "  toYrca )" crlf))
)

;"torch","N","1.toYrca"
;Torch is handy when there is a power failure.
;--"2.maSAla"
;Tribals living in the forests use torch to scare the wild animals.
;
(defrule torch1
(declare (salience 4900))
(id-root ?id torch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Aga_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  torch.clp 	torch1   "  ?id "  Aga_lagA )" crlf))
)

;"torch","VT","1.Aga_lagAnA"
;The entire hamlet was torched by their enemies.
;
