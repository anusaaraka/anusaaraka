
(defrule resign0
(declare (salience 5000))
(id-root ?id resign)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id resigned )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id SAMwi_pUrvaka_sahane_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  resign.clp  	resign0   "  ?id "  SAMwi_pUrvaka_sahane_vAlA )" crlf))
)

;"resigned","Adj","1.SAMwi_pUrvaka_sahane_vAlA"
;She finished her difficult task in a resigned manner.
;
(defrule resign1
(declare (salience 4900))
(id-root ?id resign)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wyAga_pawra_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resign.clp 	resign1   "  ?id "  wyAga_pawra_xe )" crlf))
)

;default_sense && category=verb	CodZa_xe	0
;"resign","VT","1.CodZa_xenA"
;he has resigned from the cabinet.
;--"2.supurxa_karanA"  
;She resigned her child to an adoption agency. 
;
;