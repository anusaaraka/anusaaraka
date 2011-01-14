
(defrule veneer0
(declare (salience 5000))
(id-root ?id veneer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mulammA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  veneer.clp 	veneer0   "  ?id "  mulammA )" crlf))
)

;"veneer","N","1.mulammA"
(defrule veneer1
(declare (salience 4900))
(id-root ?id veneer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mulammA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  veneer.clp 	veneer1   "  ?id "  mulammA )" crlf))
)

;"veneer","VT","1.mulammA"
;They veneered the attic 
;
