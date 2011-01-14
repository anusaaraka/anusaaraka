
(defrule articulate0
(declare (salience 5000))
(id-root ?id articulate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id articulated )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id judZA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  articulate.clp  	articulate0   "  ?id "  judZA_huA )" crlf))
)

;"articulated","Adj","1.judZA_huA{gAdZI_ke_prasaMga_meM}"
;They have designed a new truck with articulated lorries.
;
(defrule articulate1
(declare (salience 4900))
(id-root ?id articulate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyakwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  articulate.clp 	articulate1   "  ?id "  vyakwa_kara )" crlf))
)

;default_sense && category=verb	sAPZa_bola	0
;"articulate","V","1.sAPZa_bolanA"
;He articulated his opinions in the meeting.
;--"2.jodZanA"
;These two bones articulate with each other.
;
;
