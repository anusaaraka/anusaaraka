
(defrule varied0
(declare (salience 5000))
(id-root ?id varied)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Binna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  varied.clp 	varied0   "  ?id "  Binna )" crlf))
)

(defrule varied1
(declare (salience 4900))
(id-root ?id varied)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAnArUpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  varied.clp 	varied1   "  ?id "  nAnArUpa )" crlf))
)

;"varied","Adj","1.nAnArUpa"
;Courses for the students are many && varied
;
;
