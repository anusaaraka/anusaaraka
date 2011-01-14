
(defrule burlesque0
(declare (salience 5000))
(id-root ?id burlesque)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parihAsya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  burlesque.clp 	burlesque0   "  ?id "  parihAsya )" crlf))
)

;"burlesque","Adj","1.parihAsya/wamASe_kA"
;Burlesque theater
;
(defrule burlesque1
(declare (salience 4900))
(id-root ?id burlesque)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parihAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  burlesque.clp 	burlesque1   "  ?id "  parihAsa )" crlf))
)

;"burlesque","N","1.parihAsa"
;Burke was a burlesque writer.
;
(defrule burlesque2
(declare (salience 4800))
(id-root ?id burlesque)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parihAsa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  burlesque.clp 	burlesque2   "  ?id "  parihAsa_kara )" crlf))
)

;"burlesque","VT","1.parihAsa_karanA"
;Some folks burlesqued the Prime Minister's words && ridiculed him.
;
