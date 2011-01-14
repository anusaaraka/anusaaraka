
(defrule representative0
(declare (salience 5000))
(id-root ?id representative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAwiniXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  representative.clp 	representative0   "  ?id "  prAwiniXika )" crlf))
)

;"representative","Adj","1.prAwiniXika"
;Is a questionnaire answered by 500 people truly representative of national
;opinion.  
;
(defrule representative1
(declare (salience 4900))
(id-root ?id representative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiniXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  representative.clp 	representative1   "  ?id "  prawiniXi )" crlf))
)

;"representative","N","1.prawiniXi"
;I have sent my representative to attend the conference. 
;--"2.prawirUpa"
;He is a representative of the younger generation.
;--"3.prawiniXiwva_para__AXAriwa"
;The state is being ruled by a representative government.
;
