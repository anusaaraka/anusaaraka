;@@@ Added by Nandini (28-11-13)
;The latest unemployment figures shows drastic change in the graph.
(defrule latest1
(declare (salience 150))
(id-word ?id latest)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
;(or(kriyA-object  ? ?id1)(kriyA-subject ? ?id1))
(id-word ?id1 news|figures)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id wAjzA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  latest.clp  	latest1   "  ?id "  wAjzA )" crlf))
)

;@@@ Added by Nandini (28-11-13)
;She likes latest fashion.
(defrule latest0
(declare (salience 100))
(id-word ?id latest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id navInawama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  latest.clp  	latest0   "  ?id "  navInawama )" crlf))
)

