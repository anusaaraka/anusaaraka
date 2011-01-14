
(defrule seem0
(declare (salience 5000))
(id-root ?id seem)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id seeming )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id prawIyamAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  seem.clp  	seem0   "  ?id "  prawIyamAna )" crlf))
)

;"seeming","Adj","1.prawIyamAna"
;He is a seeming man.
;
(defrule seem1
(declare (salience 4900))
(id-root ?id seem)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawIwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  seem.clp 	seem1   "  ?id "  prawIwa_ho )" crlf))
)

;"seem","V","1.prawIwa honA/laganA/jAna padZanA"
;It seems that it will rain heavily today.
;
;