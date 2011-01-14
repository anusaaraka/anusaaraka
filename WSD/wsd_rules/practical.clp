
(defrule practical0
(declare (salience 5000))
(id-root ?id practical)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyAvahArika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  practical.clp 	practical0   "  ?id "  vyAvahArika )" crlf))
)

(defrule practical1
(declare (salience 4900))
(id-root ?id practical)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyAvahArika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  practical.clp 	practical1   "  ?id "  vyAvahArika )" crlf))
)

;"practical","Adj","1.vyAvahArika"
;He is at better practical tasks.
;--"2.upayogI"
;This is a model of practical.modern kitchen.
;
;
