
(defrule relative0
(declare (salience 5000))
(id-root ?id relative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMbaMXiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  relative.clp 	relative0   "  ?id "  saMbaMXiwa )" crlf))
)

;"relative","Adj","1.saMbaMXiwa"
;The file relative to the case is missing.   
;--"2.wulanAwmaka"
;The relative advantages of gas && electricity are different.
;--"3.sambanXa_vAcaka_kriyA-viReSaNa"
;This is the place where we met.  
;--"4.sambanXa_vAcaka_sarvanAma"
;The boy whom I met.' whom'is a relative pronoun.
;
(defrule relative1
(declare (salience 4900))
(id-root ?id relative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  relative.clp 	relative1   "  ?id "  sagA )" crlf))
)

;"relative","N","1.sagA"
;She is my close relative.
;
