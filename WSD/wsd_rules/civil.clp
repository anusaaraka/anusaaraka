
(defrule civil0
(declare (salience 5000))
(id-root ?id civil)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAgarIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  civil.clp 	civil0   "  ?id "  nAgarIka )" crlf))
)

(defrule civil1
(declare (salience 4900))
(id-root ?id civil)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAgarika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  civil.clp 	civil1   "  ?id "  nAgarika )" crlf))
)

;"civil","Adj","1.nAgarika"
;The country faced civil disorder during partition.
;--"2.saBya"
;You should have a civil behaviour in public.
;--"3.xIvAnI{kAnUna_saMbaMXI}"
;He is a civil lawyer,not a criminal lawyer.
;--"4.asEnika"
;The civil government of the country was overthrown in a military coup.
;
;
