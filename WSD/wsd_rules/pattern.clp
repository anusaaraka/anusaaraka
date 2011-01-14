
(defrule pattern0
(declare (salience 5000))
(id-root ?id pattern)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id racA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pattern.clp 	pattern0   "  ?id "  racA_huA )" crlf))
)

;"pattern","Adj","1.racA_huA"
;She has a blue shawl patterned with silver embroidery.
;
(defrule pattern1
(declare (salience 4900))
(id-root ?id pattern)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id namUnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pattern.clp 	pattern1   "  ?id "  namUnA )" crlf))
)

;"pattern","N","1.namUnA/prawirUpa"
;She bought a book of wallpaper patterns.
;The pattern of his house is not modern.
;The tailor showed him the best dress patterns.
;They follow his pattern of good conduct.
;--"2.AxarSa"
;The company's export policy set the pattern for other companies.
;
(defrule pattern2
(declare (salience 4800))
(id-root ?id pattern)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anukaraNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pattern.clp 	pattern2   "  ?id "  anukaraNa_kara )" crlf))
)

;"pattern","V","1.anukaraNa_karanA"
;The child tries to pattern everything her parents do.
;
