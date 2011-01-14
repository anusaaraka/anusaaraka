
(defrule large0
(declare (salience 5000))
(id-root ?id large)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id larger)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id aXika_viSAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  large.clp  	large0   "  ?id "  aXika_viSAla )" crlf))
)

(defrule large1
(declare (salience 4900))
(id-root ?id large)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  large.clp 	large1   "  ?id "  viSAla )" crlf))
)

;"large","Adj","1.viSAla"
;A large crowd. A large fort
;--"2.vyApaka"
;A large view. A large && knotty problem.
;
;

;Added by Veena Bagga (06-01-2010)
(defrule large2
(declare (salience 6500))
(id-root ?id large)
;(Any)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id badA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  large.clp    large2   " ?id " badA)" crlf))
) 
;He is a large child for his age . 
